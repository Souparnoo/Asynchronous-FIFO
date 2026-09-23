module asynchronous_fifo(input wr_clk,rd_clk,wr_reset_n,rd_reset_n,wr_en,rd_en,
                input[7:0] din,
                output reg [7:0] dout,
                output reg empty,full);
    reg[7:0]mem[0:63];
    reg[5:0] wp,rp;
    wire[5:0]wp_sync,rp_sync,rp_sync1,wp_sync1;
    always@(posedge wr_clk or negedge wr_reset_n) begin
      if(!wr_reset_n) wp<=0;
      else if(wr_en & !full) begin
        mem[wp]<=din;
        if(wp==63) wp<=0;
        else wp<=wp+1;
      end
    end
    always@(*)begin
      empty=rp==wp_sync;
      full=(wp==63)?(rp_sync==0):(rp_sync==wp+1);
    end
    always@(posedge rd_clk or negedge rd_reset_n) begin
      if(!rd_reset_n) rp<=0;
      else if(rd_en & !empty) begin
        dout<=mem[rp];
        if(rp==63) rp<=0;
        else rp<=rp+1;
      end
    end
    dff one(.clk(wr_clk), .reset_n(wr_reset_n), .d(rp), .q(rp_sync1));
    dff two(.clk(wr_clk), .reset_n(wr_reset_n), .d(rp_sync1), .q(rp_sync));
    dff three(.clk(rd_clk), .reset_n(rd_reset_n), .d(wp), .q(wp_sync1));
    dff four(.clk(rd_clk), .reset_n(rd_reset_n), .d(wp_sync1), .q(wp_sync));
endmodule

module dff(input clk,reset_n,
            input[5:0] d,
            output reg[5:0]q);
    always@(posedge clk or negedge reset_n) begin
      if(!reset_n) q<=0;
      else q<=d;
    end
endmodule