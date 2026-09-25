module asynchronous_fifo #(parameter AW = 2, DW=2)(input wr_clk,rd_clk,wr_reset_n,rd_reset_n,wr_en,rd_en,
                input[DW-1:0] din,
                output reg [DW-1:0] dout,
                output reg empty,full);
    reg[DW-1:0]mem[0:(1<<AW)-1];
    reg[AW:0] wp,rp;//1 wrap
    wire[AW:0] wp_gray,rp_gray,wp_sync,rp_sync,rp_sync1,wp_sync1,wp_gray_sync,rp_gray_sync;
    always@(posedge wr_clk or negedge wr_reset_n) begin
      if(!wr_reset_n) wp<=0;
      else if(wr_en & !full) begin
          mem[wp[AW-1:0]]<=din;
        if(wp==(1<<(AW+1))-1) wp<=0;
        else wp<=wp+1;
      end
    end
    always@(*)begin
      empty=rp==wp_sync;
      full=(wp[AW]==rp_sync[AW])?0:wp[AW-1:0]==rp_sync[AW-1:0];
    end
    always@(posedge rd_clk or negedge rd_reset_n) begin
      if(!rd_reset_n) rp<=0;
      else if(rd_en & !empty) begin
        dout<=mem[rp[AW-1:0]];
        if(rp==(1<<(AW+1))-1) rp<=0;
        else rp<=rp+1;
      end
    end
    binary_2_gray #(.AW(AW)) write1(wp,wp_gray);
    binary_2_gray #(.AW(AW)) read1(rp,rp_gray);
    dff #(.AW(AW)) one(.clk(wr_clk), .reset_n(wr_reset_n), .d(rp_gray), .q(rp_sync1));
    dff #(.AW(AW)) two(.clk(wr_clk), .reset_n(wr_reset_n), .d(rp_sync1), .q(rp_gray_sync));
    dff #(.AW(AW)) three(.clk(rd_clk), .reset_n(rd_reset_n), .d(wp_gray), .q(wp_sync1));
    dff #(.AW(AW)) four(.clk(rd_clk), .reset_n(rd_reset_n), .d(wp_sync1), .q(wp_gray_sync));
    gray_2_binary #(.AW(AW)) write2(wp_gray_sync,wp_sync);
    gray_2_binary #(.AW(AW)) read2(rp_gray_sync,rp_sync);
endmodule

module dff #(parameter AW=2) (input clk,reset_n,
            input[AW:0] d,
            output reg[AW:0]q);
    always@(posedge clk or negedge reset_n) begin
      if(!reset_n) q<=0;
      else q<=d;
    end
endmodule

module gray_2_binary #(parameter AW=2) (input [AW:0] a,
                      output [AW:0] b);
  wire c;
  genvar i;
  assign b[AW]=a[AW];
  generate
    for(i=AW-1;i>=0;i=i-1)begin: loop
      assign b[i]=b[i+1]^a[i];
    end
  endgenerate 
endmodule

module binary_2_gray #(parameter AW=2) (input [AW:0] a,
                      output [AW:0] b);
  wire c;
  genvar i;
  assign b[AW]=a[AW];
  generate
    for(i=AW-1;i>=0;i=i-1)begin: loop
      assign b[i]=a[i+1]^a[i];
    end
  endgenerate 
endmodule