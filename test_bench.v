`timescale 1ns/1ps

module test_bench;

    // ============================================================
    // PARAMETERS
    // ============================================================

    localparam DATA_WIDTH = 8;
    localparam FIFO_DEPTH = 64;
    localparam USABLE_DEPTH = 63;


    // ============================================================
    // DUT SIGNALS
    // ============================================================

    reg wr_clk;
    reg rd_clk;

    reg wr_reset_n;
    reg rd_reset_n;

    reg wr_en;
    reg rd_en;

    reg [DATA_WIDTH-1:0] din;

    wire [DATA_WIDTH-1:0] dout;
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
    // CLOCKS
    //
    // Write clock = 80 MHz
    // Period      = 12.5 ns
    //
    // Read clock  = 50 MHz
    // Period      = 20 ns
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
    // REFERENCE FIFO
    //
    // This is a LOGICAL FIFO.
    // It does NOT copy the DUT memory addressing.
    //
    // We only record data when the DUT actually accepts:
    //
    //     write -> wr_en && !full
    //     read  -> rd_en && !empty
    // ============================================================

    reg [7:0] expected_fifo [0:USABLE_DEPTH-1];

    integer expected_wr_ptr;
    integer expected_rd_ptr;


    // ============================================================
    // TEST STATISTICS
    // ============================================================

    integer total_writes;
    integer total_reads;
    integer errors;


    // ============================================================
    // WRITE MONITOR
    //
    // Runs in WRITE clock domain.
    //
    // Important:
    // The condition is evaluated at the same clock edge as DUT.
    // Therefore it represents an ACTUAL accepted write.
    // ============================================================

    always @(posedge wr_clk) begin

        if (!wr_reset_n) begin

            expected_wr_ptr <= 0;

        end

        else begin

            if (wr_en && !full) begin

                expected_fifo[expected_wr_ptr] <= din;

                if (expected_wr_ptr == USABLE_DEPTH-1)
                    expected_wr_ptr <= 0;
                else
                    expected_wr_ptr <= expected_wr_ptr + 1;

                total_writes <= total_writes + 1;

            end

        end

    end


    // ============================================================
    // READ MONITOR
    //
    // Runs in READ clock domain.
    //
    // dout is updated by the DUT using non-blocking assignment.
    // Therefore #1 gives the DUT NBA update time to complete.
    // ============================================================

    always @(posedge rd_clk) begin

        if (!rd_reset_n) begin

            expected_rd_ptr <= 0;

        end

        else begin

            if (rd_en && !empty) begin

                #1;

                if (dout !== expected_fifo[expected_rd_ptr]) begin

                    $display("");
                    $display("=================================================");
                    $display("ERROR: DATA MISMATCH");
                    $display("=================================================");
                    $display("Time     : %0t", $time);
                    $display("Expected : %02h", expected_fifo[expected_rd_ptr]);
                    $display("Received : %02h", dout);
                    $display("RD PTR   : %0d", expected_rd_ptr);
                    $display("");

                    errors <= errors + 1;

                end

                else begin

                    $display(
                        "[%0t] READ OK  Data = %02h",
                        $time,
                        dout
                    );

                end


                if (expected_rd_ptr == USABLE_DEPTH-1)
                    expected_rd_ptr <= 0;
                else
                    expected_rd_ptr <= expected_rd_ptr + 1;

                total_reads <= total_reads + 1;

            end

        end

    end


    // ============================================================
    // RESET TASK
    // ============================================================

    task reset_fifo;

        begin

            wr_en = 1'b0;
            rd_en = 1'b0;
            din   = 8'h00;

            wr_reset_n = 1'b0;
            rd_reset_n = 1'b0;

            expected_wr_ptr = 0;
            expected_rd_ptr = 0;

            total_writes = 0;
            total_reads  = 0;
            errors       = 0;

            repeat (5)
                @(posedge wr_clk);

            repeat (5)
                @(posedge rd_clk);

            wr_reset_n = 1'b1;
            rd_reset_n = 1'b1;

            // Allow reset values to propagate.
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
    // WRITE TASK
    //
    // Attempts ONE write.
    //
    // If FIFO is full, it does NOT wait.
    // This is useful for explicitly testing FULL behavior.
    // ============================================================

    task write_once;

        input [7:0] data;

        begin

            @(negedge wr_clk);

            din   = data;
            wr_en = 1'b1;

            @(posedge wr_clk);

            @(negedge wr_clk);

            wr_en = 1'b0;

        end

    endtask


    // ============================================================
    // READ TASK
    //
    // Attempts ONE read.
    //
    // If FIFO is empty, it does NOT wait.
    // ============================================================

    task read_once;

        begin

            @(negedge rd_clk);

            rd_en = 1'b1;

            @(posedge rd_clk);

            @(negedge rd_clk);

            rd_en = 1'b0;

        end

    endtask


    // ============================================================
    // WAIT UNTIL FIFO IS NOT EMPTY
    //
    // Includes timeout.
    // ============================================================

    task wait_for_data;

        integer timeout;

        begin

            timeout = 0;

            while (empty && timeout < 20) begin

                @(posedge rd_clk);
                timeout = timeout + 1;

            end

            if (empty) begin

                $display("");
                $display("ERROR: TIMEOUT WAITING FOR FIFO DATA");
                $display("");

                errors = errors + 1;

            end

        end

    endtask


    // ============================================================
    // WAIT UNTIL FIFO IS NOT FULL
    // ============================================================

    task wait_for_space;

        integer timeout;

        begin

            timeout = 0;

            while (full && timeout < 20) begin

                @(posedge wr_clk);
                timeout = timeout + 1;

            end

            if (full) begin

                $display("");
                $display("ERROR: TIMEOUT WAITING FOR FIFO SPACE");
                $display("");

                errors = errors + 1;

            end

        end

    endtask


    // ============================================================
    // DRAIN FIFO
    //
    // IMPORTANT:
    //
    // We use DUT's EMPTY flag.
    // We do NOT use a scoreboard count.
    //
    // Maximum 100 reads -> prevents infinite loops.
    // ============================================================

    task drain_fifo;

        integer timeout;

        begin

            timeout = 0;

            while (!empty && timeout < 100) begin

                read_once;

                timeout = timeout + 1;

            end


            if (!empty) begin

                $display("");
                $display("ERROR: FIFO DID NOT BECOME EMPTY");
                $display("");

                errors = errors + 1;

            end

            else begin

                $display("");
                $display("[%0t] FIFO EMPTY", $time);
                $display("");

            end

        end

    endtask


    // ============================================================
    // TEST 1
    // BASIC WRITE / READ
    // ============================================================

    task test_basic;

        begin

            $display("");
            $display("=================================================");
            $display("TEST 1: BASIC WRITE / READ");
            $display("=================================================");


            write_once(8'h11);
            write_once(8'h22);
            write_once(8'h33);
            write_once(8'h44);


            // Write pointer needs to cross into read clock domain.
            repeat (3)
                @(posedge rd_clk);


            wait_for_data;


            read_once;
            read_once;
            read_once;
            read_once;


            repeat (3)
                @(posedge rd_clk);


            if (!empty) begin

                $display("ERROR: FIFO should be EMPTY");
                errors = errors + 1;

            end


            $display("TEST 1 COMPLETE");

        end

    endtask


    // ============================================================
    // TEST 2
    // FILL FIFO
    //
    // 63 usable entries.
    // ============================================================

    task test_full;

        integer i;

        begin

            $display("");
            $display("=================================================");
            $display("TEST 2: FILL FIFO");
            $display("=================================================");


            for (i = 0; i < 63; i = i + 1) begin

                write_once(i);

            end


            // Full is generated in write domain.
            repeat (3)
                @(posedge wr_clk);


            if (full) begin

                $display("[%0t] FULL FLAG CORRECT", $time);

            end

            else begin

                $display("[%0t] ERROR: FIFO SHOULD BE FULL", $time);

                errors = errors + 1;

            end


            $display("TEST 2 COMPLETE");

        end

    endtask


    // ============================================================
    // TEST 3
    // WRITE WHILE FULL
    // ============================================================

    task test_write_when_full;

        begin

            $display("");
            $display("=================================================");
            $display("TEST 3: WRITE WHILE FULL");
            $display("=================================================");


            if (!full) begin

                $display("ERROR: FIFO is not full before test");
                errors = errors + 1;

            end


            // This write must NOT be accepted.
            write_once(8'hAA);


            repeat (2)
                @(posedge wr_clk);


            if (!full) begin

                $display("ERROR: FULL unexpectedly deasserted");
                errors = errors + 1;

            end


            $display("TEST 3 COMPLETE");

        end

    endtask


    // ============================================================
    // TEST 4
    // DRAIN FIFO
    // ============================================================

    task test_drain;

        begin

            $display("");
            $display("=================================================");
            $display("TEST 4: DRAIN FIFO");
            $display("=================================================");


            // Give read domain enough time to see write pointer.
            repeat (3)
                @(posedge rd_clk);


            drain_fifo;


            $display("TEST 4 COMPLETE");

        end

    endtask


    // ============================================================
    // TEST 5
    // READ WHEN EMPTY
    // ============================================================

    task test_read_when_empty;

        begin

            $display("");
            $display("=================================================");
            $display("TEST 5: READ WHEN EMPTY");
            $display("=================================================");


            repeat (3)
                @(posedge rd_clk);


            if (!empty) begin

                $display("ERROR: FIFO should be empty");
                errors = errors + 1;

            end


            // Must not produce a read.
            read_once;


            if (!empty) begin

                $display("ERROR: FIFO changed from EMPTY");
                errors = errors + 1;

            end


            $display("TEST 5 COMPLETE");

        end

    endtask


    // ============================================================
    // TEST 6
    // POINTER WRAPAROUND
    //
    // Write one item, read one item repeatedly.
    //
    // This forces both pointers to wrap around.
    // ============================================================

    task test_wraparound;

        integer i;

        begin

            $display("");
            $display("=================================================");
            $display("TEST 6: POINTER WRAPAROUND");
            $display("=================================================");


            for (i = 0; i < 130; i = i + 1) begin

                write_once(i);

                // Wait until write pointer propagates
                // into read clock domain.
                wait_for_data;

                read_once;

            end


            repeat (5)
                @(posedge rd_clk);


            if (!empty) begin

                $display("ERROR: FIFO should be empty after wrap test");
                errors = errors + 1;

            end


            $display("TEST 6 COMPLETE");

        end

    endtask


    // ============================================================
    // TEST 7
    // DIFFERENT CLOCK SPEEDS + BURST TRAFFIC
    // ============================================================

    task test_burst;

        integer i;

        begin

            $display("");
            $display("=================================================");
            $display("TEST 7: BURST TRAFFIC");
            $display("=================================================");


            // Write 30 values.
            for (i = 0; i < 30; i = i + 1)
                write_once(8'h80 + i);


            // Wait for synchronization.
            repeat (4)
                @(posedge rd_clk);


            // Read all values.
            drain_fifo;


            $display("TEST 7 COMPLETE");

        end

    endtask


    // ============================================================
    // TEST 8
    // RANDOM ASYNCHRONOUS TRAFFIC
    //
    // Independent write and read stimulus.
    //
    // Fixed number of cycles -> NEVER infinite.
    // ============================================================

    initial begin : RANDOM_TEST

        integer i;
        integer random_value;

        // Wait for main reset and deterministic tests.
        wait (wr_reset_n === 1'b1);
        wait (rd_reset_n === 1'b1);

        // Main test sequence below handles deterministic tests.
        // Random test is started later using the event below.

    end


    // ============================================================
    // RANDOM WRITE DRIVER
    // ============================================================

    task random_write_driver;

        integer i;
        integer r;

        begin

            for (i = 0; i < 300; i = i + 1) begin

                @(negedge wr_clk);

                r = $random & 32'h7fffffff;

                if ((r % 100) < 65) begin

                    din   = $random & 8'hFF;
                    wr_en = 1'b1;

                end

                else begin

                    wr_en = 1'b0;

                end

            end

            @(negedge wr_clk);

            wr_en = 1'b0;

        end

    endtask


    // ============================================================
    // RANDOM READ DRIVER
    // ============================================================

    task random_read_driver;

        integer i;
        integer r;

        begin

            for (i = 0; i < 300; i = i + 1) begin

                @(negedge rd_clk);

                r = $random & 32'h7fffffff;

                if ((r % 100) < 65)
                    rd_en = 1'b1;
                else
                    rd_en = 1'b0;

            end

            @(negedge rd_clk);

            rd_en = 1'b0;

        end

    endtask


    // ============================================================
    // MAIN TEST SEQUENCE
    // ============================================================

    initial begin

        // Initial values
        wr_clk = 0;
        rd_clk = 0;

        wr_en = 0;
        rd_en = 0;

        din = 0;

        wr_reset_n = 0;
        rd_reset_n = 0;

        expected_wr_ptr = 0;
        expected_rd_ptr = 0;

        total_writes = 0;
        total_reads = 0;
        errors = 0;


        // --------------------------------------------------------
        // RESET
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

        test_full;


        // --------------------------------------------------------
        // TEST 3
        // --------------------------------------------------------

        test_write_when_full;


        // --------------------------------------------------------
        // TEST 4
        // --------------------------------------------------------

        test_drain;


        // --------------------------------------------------------
        // TEST 5
        // --------------------------------------------------------

        test_read_when_empty;


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
        // RANDOM
        // --------------------------------------------------------

        $display("");
        $display("=================================================");
        $display("TEST 8: RANDOM ASYNCHRONOUS TRAFFIC");
        $display("=================================================");


        fork

            random_write_driver;
            random_read_driver;

        join


        // Give pending synchronized operations time to settle.
        repeat (10)
            @(posedge wr_clk);

        repeat (10)
            @(posedge rd_clk);


        // Drain whatever remains.
        drain_fifo;


        // --------------------------------------------------------
        // FINAL RESULT
        // --------------------------------------------------------

        $display("");
        $display("=================================================");
        $display("                 FINAL RESULT");
        $display("=================================================");

        $display("Total accepted writes : %0d", total_writes);
        $display("Total accepted reads  : %0d", total_reads);
        $display("Errors                : %0d", errors);


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
    // WAVEFORM
    // ============================================================

    initial begin

        $dumpfile("asynchronous_fifo.vcd");
        $dumpvars(0, test_bench);

    end

endmodule