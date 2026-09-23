`timescale 1ns/1ps

module test_bench;

    // ============================================================
    // PARAMETERS
    // ============================================================

    localparam DATA_WIDTH   = 8;
    localparam FIFO_DEPTH   = 64;
    localparam FIFO_CAPACITY = 63;


    // ============================================================
    // DUT INTERFACE
    // ============================================================

    reg wr_clk;
    reg rd_clk;

    reg wr_reset_n;
    reg rd_reset_n;

    reg wr_en;
    reg rd_en;

    reg [7:0] din;

    wire [7:0] dout;
    wire empty;
    wire full;


    // ============================================================
    // DUT
    // ============================================================

    asynchronous_fifo dut (
        .wr_clk     (wr_clk),
        .rd_clk     (rd_clk),

        .wr_reset_n (wr_reset_n),
        .rd_reset_n (rd_reset_n),

        .wr_en      (wr_en),
        .rd_en      (rd_en),

        .din        (din),

        .dout       (dout),
        .empty      (empty),
        .full       (full)
    );


    // ============================================================
    // CLOCK GENERATION
    //
    // Write clock = 80 MHz
    // Period = 12.5 ns
    //
    // Read clock = 50 MHz
    // Period = 20 ns
    // ============================================================

    initial begin
        wr_clk = 1'b0;

        forever
            #6.25 wr_clk = ~wr_clk;
    end


    initial begin
        rd_clk = 1'b0;

        forever
            #10 rd_clk = ~rd_clk;
    end


    // ============================================================
    // REFERENCE FIFO / SCOREBOARD
    // ============================================================

    reg [7:0] reference_fifo [0:FIFO_CAPACITY-1];

    integer ref_wr_ptr;
    integer ref_rd_ptr;

    integer ref_count;

    integer errors;
    integer total_writes;
    integer total_reads;

    integer i;


    // ============================================================
    // INITIALIZATION
    // ============================================================

    initial begin

        wr_en = 1'b0;
        rd_en = 1'b0;

        din = 8'h00;

        wr_reset_n = 1'b0;
        rd_reset_n = 1'b0;

        ref_wr_ptr = 0;
        ref_rd_ptr = 0;
        ref_count  = 0;

        errors = 0;
        total_writes = 0;
        total_reads  = 0;

        for (i = 0; i < FIFO_CAPACITY; i = i + 1)
            reference_fifo[i] = 8'h00;

    end


    // ============================================================
    // WRITE TASK
    //
    // The scoreboard is updated BEFORE the active clock edge.
    //
    // This avoids a race between the DUT's non-blocking assignment
    // and the testbench scoreboard.
    // ============================================================

    task write_data;

        input [7:0] data;

        begin

            @(negedge wr_clk);

            if (!full) begin

                // Drive DUT inputs before active edge.
                din   = data;
                wr_en = 1'b1;


                // Record accepted transaction.
                reference_fifo[ref_wr_ptr] = data;

                if (ref_wr_ptr == FIFO_CAPACITY-1)
                    ref_wr_ptr = 0;
                else
                    ref_wr_ptr = ref_wr_ptr + 1;

                ref_count = ref_count + 1;

                total_writes = total_writes + 1;


                // DUT performs write here.
                @(posedge wr_clk);


                @(negedge wr_clk);

                wr_en = 1'b0;

            end

            else begin

                // FIFO full -> write must not be accepted.

                wr_en = 1'b0;

                $display(
                    "[%0t] WRITE BLOCKED - FIFO FULL - Data = %02h",
                    $time,
                    data
                );

            end

        end

    endtask


    // ============================================================
    // READ TASK
    //
    // Scoreboard comparison happens AFTER the DUT updates dout.
    // ============================================================

    task read_data;

        reg [7:0] expected;

        begin

            @(negedge rd_clk);

            if (!empty) begin

                rd_en = 1'b1;

                // DUT performs read here.
                @(posedge rd_clk);

                // Allow NBA assignment to dout to update.
                #1;

                expected = reference_fifo[ref_rd_ptr];


                if (dout !== expected) begin

                    $display("");
                    $display("=================================================");
                    $display("ERROR: DATA MISMATCH");
                    $display("=================================================");
                    $display("Time     : %0t", $time);
                    $display("Expected : %02h", expected);
                    $display("Received : %02h", dout);
                    $display("Read ptr : %0d", ref_rd_ptr);
                    $display("=================================================");
                    $display("");

                    errors = errors + 1;

                end

                else begin

                    $display(
                        "[%0t] READ OK   Data = %02h",
                        $time,
                        dout
                    );

                end


                // Advance reference read pointer.

                if (ref_rd_ptr == FIFO_CAPACITY-1)
                    ref_rd_ptr = 0;
                else
                    ref_rd_ptr = ref_rd_ptr + 1;

                ref_count = ref_count - 1;

                total_reads = total_reads + 1;


                @(negedge rd_clk);

                rd_en = 1'b0;

            end

            else begin

                rd_en = 1'b0;

                $display(
                    "[%0t] READ BLOCKED - FIFO EMPTY",
                    $time
                );

            end

        end

    endtask


    // ============================================================
    // RESET TASK
    // ============================================================

    task reset_fifo;

        begin

            wr_en = 1'b0;
            rd_en = 1'b0;

            din = 8'h00;

            wr_reset_n = 1'b0;
            rd_reset_n = 1'b0;


            // Reset scoreboard.

            ref_wr_ptr = 0;
            ref_rd_ptr = 0;
            ref_count  = 0;

            for (i = 0; i < FIFO_CAPACITY; i = i + 1)
                reference_fifo[i] = 8'h00;


            // Hold reset for multiple clock cycles.

            repeat (5)
                @(posedge wr_clk);

            repeat (5)
                @(posedge rd_clk);


            // Release both resets.

            wr_reset_n = 1'b1;
            rd_reset_n = 1'b1;


            // Allow both domains to settle.

            repeat (3)
                @(posedge wr_clk);

            repeat (3)
                @(posedge rd_clk);


            $display("");
            $display("=================================================");
            $display("RESET COMPLETE");
            $display("=================================================");
            $display("");

        end

    endtask


    // ============================================================
    // WAIT FOR EMPTY
    //
    // Maximum 100 read-clock cycles.
    // Prevents infinite simulation.
    // ============================================================

    task wait_until_empty;

        integer timeout;

        begin

            timeout = 0;

            while (empty !== 1'b1 && timeout < 100) begin

                @(posedge rd_clk);

                timeout = timeout + 1;

            end


            if (empty !== 1'b1) begin

                $display("");
                $display("ERROR: TIMEOUT WAITING FOR EMPTY");
                $display("");

                errors = errors + 1;

            end

            else begin

                $display(
                    "[%0t] EMPTY = 1",
                    $time
                );

            end

        end

    endtask


    // ============================================================
    // WAIT FOR FULL
    //
    // Maximum 100 write-clock cycles.
    // ============================================================

    task wait_until_full;

        integer timeout;

        begin

            timeout = 0;

            while (full !== 1'b1 && timeout < 100) begin

                @(posedge wr_clk);

                timeout = timeout + 1;

            end


            if (full !== 1'b1) begin

                $display("");
                $display("ERROR: TIMEOUT WAITING FOR FULL");
                $display("");

                errors = errors + 1;

            end

            else begin

                $display(
                    "[%0t] FULL = 1",
                    $time
                );

            end

        end

    endtask


    // ============================================================
    // TEST 1
    //
    // BASIC FIFO FUNCTIONALITY
    // ============================================================

    task test_basic;

        begin

            $display("");
            $display("=================================================");
            $display("TEST 1 : BASIC WRITE / READ");
            $display("=================================================");


            write_data(8'h11);
            write_data(8'h22);
            write_data(8'h33);
            write_data(8'h44);


            // Give write pointer time to cross
            // into read clock domain.

            repeat (4)
                @(posedge rd_clk);


            read_data;
            read_data;
            read_data;
            read_data;


            wait_until_empty;


            $display("TEST 1 COMPLETE");
            $display("");

        end

    endtask


    // ============================================================
    // TEST 2
    //
    // FILL FIFO
    //
    // 63 usable entries.
    // ============================================================

    task test_fill;

        integer j;

        begin

            $display("");
            $display("=================================================");
            $display("TEST 2 : FILL FIFO");
            $display("=================================================");


            for (j = 0; j < FIFO_CAPACITY; j = j + 1) begin

                write_data(j[7:0]);

            end


            // Allow full logic to settle.

            repeat (4)
                @(posedge wr_clk);


            if (full !== 1'b1) begin

                $display("");
                $display("ERROR: FIFO DID NOT ASSERT FULL");
                $display("full = %b", full);
                $display("");

                errors = errors + 1;

            end

            else begin

                $display("");
                $display("[%0t] FIFO FULL CORRECTLY ASSERTED", $time);
                $display("");

            end


            $display("TEST 2 COMPLETE");
            $display("");

        end

    endtask


    // ============================================================
    // TEST 3
    //
    // WRITE WHILE FULL
    // ============================================================

    task test_full_protection;

        integer writes_before;

        begin

            $display("");
            $display("=================================================");
            $display("TEST 3 : WRITE WHILE FULL");
            $display("=================================================");


            if (full !== 1'b1) begin

                $display("ERROR: FIFO was expected to be FULL");
                errors = errors + 1;

            end


            writes_before = total_writes;


            // This write must be rejected.

            write_data(8'hAA);


            if (total_writes != writes_before) begin

                $display("");
                $display("ERROR: WRITE ACCEPTED WHILE FIFO FULL");
                $display("");

                errors = errors + 1;

            end

            else begin

                $display("");
                $display("WRITE CORRECTLY BLOCKED");
                $display("");

            end


            $display("TEST 3 COMPLETE");
            $display("");

        end

    endtask


    // ============================================================
    // TEST 4
    //
    // DRAIN FIFO
    // ============================================================

    task test_drain;

        integer j;

        begin

            $display("");
            $display("=================================================");
            $display("TEST 4 : DRAIN FIFO");
            $display("=================================================");


            // Allow synchronized write pointer to reach
            // read domain.

            repeat (4)
                @(posedge rd_clk);


            // There should be data available now.

            for (j = 0; j < FIFO_CAPACITY; j = j + 1) begin

                if (!empty)
                    read_data;
                else begin

                    $display("");
                    $display(
                        "ERROR: FIFO became EMPTY too early at read %0d",
                        j
                    );
                    $display("");

                    errors = errors + 1;

                    j = FIFO_CAPACITY;

                end

            end


            wait_until_empty;


            $display("TEST 4 COMPLETE");
            $display("");

        end

    endtask


    // ============================================================
    // TEST 5
    //
    // READ WHILE EMPTY
    // ============================================================

    task test_empty_protection;

        integer reads_before;

        begin

            $display("");
            $display("=================================================");
            $display("TEST 5 : READ WHILE EMPTY");
            $display("=================================================");


            wait_until_empty;


            reads_before = total_reads;


            // This read must be rejected.

            read_data;


            if (total_reads != reads_before) begin

                $display("");
                $display("ERROR: READ ACCEPTED WHILE FIFO EMPTY");
                $display("");

                errors = errors + 1;

            end

            else begin

                $display("");
                $display("READ CORRECTLY BLOCKED");
                $display("");

            end


            $display("TEST 5 COMPLETE");
            $display("");

        end

    endtask


    // ============================================================
    // TEST 6
    //
    // POINTER WRAPAROUND
    // ============================================================

    task test_wraparound;

        integer j;

        begin

            $display("");
            $display("=================================================");
            $display("TEST 6 : POINTER WRAPAROUND");
            $display("=================================================");


            // Repeated write/read causes both pointers
            // to cross 63 -> 0.

            for (j = 0; j < 130; j = j + 1) begin

                write_data(j[7:0]);


                // Wait for write pointer synchronization.

                repeat (3)
                    @(posedge rd_clk);


                if (!empty)
                    read_data;
                else begin

                    $display("");
                    $display(
                        "ERROR: FIFO unexpectedly EMPTY at iteration %0d",
                        j
                    );
                    $display("");

                    errors = errors + 1;

                end

            end


            wait_until_empty;


            $display("TEST 6 COMPLETE");
            $display("");

        end

    endtask


    // ============================================================
    // TEST 7
    //
    // BURST TRAFFIC
    // ============================================================

    task test_burst;

        integer j;

        begin

            $display("");
            $display("=================================================");
            $display("TEST 7 : BURST TRAFFIC");
            $display("=================================================");


            // Write 30 values.

            for (j = 0; j < 30; j = j + 1)
                write_data(8'h80 + j);


            // Wait for write pointer synchronization.

            repeat (4)
                @(posedge rd_clk);


            // Read 30 values.

            for (j = 0; j < 30; j = j + 1) begin

                if (!empty)
                    read_data;
                else begin

                    $display("");
                    $display(
                        "ERROR: FIFO EMPTY DURING BURST READ %0d",
                        j
                    );
                    $display("");

                    errors = errors + 1;

                    j = 30;

                end

            end


            wait_until_empty;


            $display("TEST 7 COMPLETE");
            $display("");

        end

    endtask


    // ============================================================
    // TEST 8
    //
    // RANDOM ASYNCHRONOUS TRAFFIC
    //
    // Fixed number of iterations.
    // No infinite loops.
    // ============================================================

    task random_write;

        integer j;
        integer r;

        begin

            for (j = 0; j < 300; j = j + 1) begin

                @(negedge wr_clk);

                r = $random;


                if ((r < 0 ? -r : r) % 100 < 65) begin

                    if (!full) begin

                        din   = $random;
                        wr_en = 1'b1;

                        // Scoreboard update BEFORE clock edge.

                        reference_fifo[ref_wr_ptr] = din;

                        if (ref_wr_ptr == FIFO_CAPACITY-1)
                            ref_wr_ptr = 0;
                        else
                            ref_wr_ptr = ref_wr_ptr + 1;

                        ref_count = ref_count + 1;

                        total_writes = total_writes + 1;

                    end

                    else begin

                        wr_en = 1'b0;

                    end

                end

                else begin

                    wr_en = 1'b0;

                end


                @(posedge wr_clk);

            end


            @(negedge wr_clk);

            wr_en = 1'b0;

        end

    endtask


    task random_read;

        integer j;
        integer r;
        reg [7:0] expected;

        begin

            for (j = 0; j < 300; j = j + 1) begin

                @(negedge rd_clk);

                r = $random;


                if ((r < 0 ? -r : r) % 100 < 65) begin

                    if (!empty) begin

                        rd_en = 1'b1;

                        @(posedge rd_clk);

                        #1;

                        expected = reference_fifo[ref_rd_ptr];


                        if (dout !== expected) begin

                            $display("");
                            $display("=================================================");
                            $display("RANDOM TEST DATA ERROR");
                            $display("=================================================");
                            $display("Time     : %0t", $time);
                            $display("Expected : %02h", expected);
                            $display("Received : %02h", dout);
                            $display("=================================================");
                            $display("");

                            errors = errors + 1;

                        end

                        else begin

                            $display(
                                "[%0t] RANDOM READ OK = %02h",
                                $time,
                                dout
                            );

                        end


                        if (ref_rd_ptr == FIFO_CAPACITY-1)
                            ref_rd_ptr = 0;
                        else
                            ref_rd_ptr = ref_rd_ptr + 1;

                        ref_count = ref_count - 1;

                        total_reads = total_reads + 1;

                    end

                    else begin

                        rd_en = 1'b0;

                    end

                end

                else begin

                    rd_en = 1'b0;

                end


                @(negedge rd_clk);

                rd_en = 1'b0;

            end

        end

    endtask


    // ============================================================
    // MAIN TEST SEQUENCE
    // ============================================================

    initial begin


        // --------------------------------------------------------
        // INITIAL RESET
        // --------------------------------------------------------

        reset_fifo;


        // --------------------------------------------------------
        // TEST 1
        // --------------------------------------------------------

        test_basic;


        // --------------------------------------------------------
        // RESET
        // --------------------------------------------------------

        reset_fifo;


        // --------------------------------------------------------
        // TEST 2
        // --------------------------------------------------------

        test_fill;


        // --------------------------------------------------------
        // TEST 3
        // --------------------------------------------------------

        test_full_protection;


        // --------------------------------------------------------
        // TEST 4
        // --------------------------------------------------------

        test_drain;


        // --------------------------------------------------------
        // TEST 5
        // --------------------------------------------------------

        test_empty_protection;


        // --------------------------------------------------------
        // RESET
        // --------------------------------------------------------

        reset_fifo;


        // --------------------------------------------------------
        // TEST 6
        // --------------------------------------------------------

        test_wraparound;


        // --------------------------------------------------------
        // RESET
        // --------------------------------------------------------

        reset_fifo;


        // --------------------------------------------------------
        // TEST 7
        // --------------------------------------------------------

        test_burst;


        // --------------------------------------------------------
        // RESET
        // --------------------------------------------------------

        reset_fifo;


        // --------------------------------------------------------
        // TEST 8
        // --------------------------------------------------------

        $display("");
        $display("=================================================");
        $display("TEST 8 : RANDOM ASYNCHRONOUS TRAFFIC");
        $display("=================================================");


        fork

            random_write;
            random_read;

        join


        // Allow pending CDC synchronization to settle.

        repeat (10)
            @(posedge wr_clk);

        repeat (10)
            @(posedge rd_clk);


        // Do not use ref_count to decide whether to loop.
        // Drain based on DUT empty flag with timeout.

        wait_until_empty;


        // --------------------------------------------------------
        // FINAL SUMMARY
        // --------------------------------------------------------

        $display("");
        $display("=================================================");
        $display("                 TEST SUMMARY");
        $display("=================================================");

        $display("Total writes : %0d", total_writes);
        $display("Total reads  : %0d", total_reads);
        $display("Scoreboard count : %0d", ref_count);
        $display("Errors       : %0d", errors);


        if (errors == 0) begin

            $display("");
            $display("***********************************************");
            $display("*                                             *");
            $display("*          ASYNC FIFO TEST PASSED            *");
            $display("*                                             *");
            $display("***********************************************");
            $display("");

        end

        else begin

            $display("");
            $display("***********************************************");
            $display("*                                             *");
            $display("*          ASYNC FIFO TEST FAILED            *");
            $display("*                                             *");
            $display("***********************************************");
            $display("");

        end


        $finish;

    end


    // ============================================================
    // VCD WAVEFORM
    // ============================================================

    initial begin

        $dumpfile("asynchronous_fifo.vcd");
        $dumpvars(0, test_bench);

    end

endmodule