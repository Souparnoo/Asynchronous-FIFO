# File saved with Nlview 7.8.0 2024-04-26 e1825d835c VDI=44 GEI=38 GUI=JA:24.0 threadsafe
# 
# non-default properties - (restore without -noprops)
property -colorscheme classic
property attrcolor #000000
property attrfontsize 8
property autobundle 1
property backgroundcolor #ffffff
property boxcolor0 #575d6c
property boxcolor1 #575d6c
property boxcolor2 #000000
property boxinstcolor #1c1f28
property boxpincolor #1c1f28
property buscolor #009633
property closeenough 5
property createnetattrdsp 2048
property decorate 1
property elidetext 40
property fillcolor1 #e5c7ff
property fillcolor2 #cde5ff
property fillcolor3 #f0f0f0
property gatecellname 2
property instattrmax 30
property instdrag 15
property instorder 1
property marksize 12
property maxfontsize 12
property maxzoom 5
property netcolor #8bc34a
property objecthighlight0 #fe00f6
property objecthighlight1 #ffea00
property objecthighlight2 #84e413
property objecthighlight3 #1661ff
property objecthighlight4 #d9b7ff
property objecthighlight5 #ffa358
property objecthighlight6 #ff2b2b
property objecthighlight7 #00e0ff
property objecthighlight8 #c0ca33
property objecthighlight9 #b16eff
property objecthighlight10 #46a466
property objecthighlight11 #caff78
property objecthighlight12 #ab47bc
property objecthighlight13 #b4602c
property objecthighlight14 #c20f8c
property objecthighlight15 #00ffaa
property objecthighlight16 #ff9fe4
property objecthighlight17 #ff8019
property objecthighlight18 #26b3ff
property objecthighlight19 #e5551c
property overlaycolor #8bc34a
property pbuscolor #000000
property pbusnamecolor #1c1f28
property pinattrmax 20
property pinorder 2
property pinpermute 0
property portcolor #000000
property portnamecolor #1c1f28
property ripindexfontsize 4
property rippercolor #000000
property rubberbandcolor #1c1f28
property rubberbandfontsize 13
property selectattr 0
property selectionappearance 2
property selectioncolor #396cef
property sheetheight 44
property sheetwidth 68
property showmarks 1
property shownetname 0
property showpagenumbers 1
property showripindex 1
property timelimit 1
#
module new asynchronous_fifo work:asynchronous_fifo:NOFILE -nosplit
load symbol IBUF hdi_primitives BUF pin O output pin I input fillcolor 1
load symbol LUT6 hdi_primitives BOX pin O output.right pin I0 input.left pin I1 input.left pin I2 input.left pin I3 input.left pin I4 input.left pin I5 input.left fillcolor 1
load symbol OBUF hdi_primitives BUF pin O output pin I input fillcolor 1
load symbol FDRE hdi_primitives GEN pin Q output.right pin C input.clk.left pin CE input.left pin D input.left pin R input.left fillcolor 1
load symbol MUXF7 hdi_primitives MUX pin O output.right pin I0 input.left pin I1 input.left pin S input.bot fillcolor 1
load symbol MUXF8 hdi_primitives MUX pin O output.right pin I0 input.left pin I1 input.left pin S input.bot fillcolor 1
load symbol dff work:dff:NOFILE HIERBOX pin CLK input.left pin empty_OBUF output.right pin q_reg[0]_0 input.left pin rd_en_IBUF input.left pin rd_reset_n_IBUF input.left pinBus E output.right [0:0] pinBus Q input.left [5:0] pinBus q_reg[5]_0 input.left [5:0] pinBus rp_reg[0] output.right [0:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol dff_0 work:dff_0:NOFILE HIERBOX pin CLK input.left pin q_reg[0]_0 input.left pinBus Q output.right [5:0] pinBus q_reg[5]_0 input.left [5:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol BUFG hdi_primitives BUF pin O output pin I input fillcolor 1
load symbol LUT1 hdi_primitives BOX pin O output.right pin I0 input.left fillcolor 1
load symbol LUT2 hdi_primitives BOX pin O output.right pin I0 input.left pin I1 input.left fillcolor 1
load symbol LUT3 hdi_primitives BOX pin O output.right pin I0 input.left pin I1 input.left pin I2 input.left fillcolor 1
load symbol LUT4 hdi_primitives BOX pin O output.right pin I0 input.left pin I1 input.left pin I2 input.left pin I3 input.left fillcolor 1
load symbol LUT5 hdi_primitives BOX pin O output.right pin I0 input.left pin I1 input.left pin I2 input.left pin I3 input.left pin I4 input.left fillcolor 1
load symbol FDCE hdi_primitives GEN pin Q output.right pin C input.clk.left pin CE input.left pin CLR input.left pin D input.left fillcolor 1
load symbol dff_1 work:dff_1:NOFILE HIERBOX pin CLK input.left pin rd_reset_n output.right pin rd_reset_n_IBUF input.left pinBus Q output.right [5:0] pinBus q_reg[5]_0 input.left [5:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol dff_2 work:dff_2:NOFILE HIERBOX pin CLK input.left pin full_OBUF output.right pin wp0 output.right pin wr_en_IBUF input.left pin wr_reset_n output.right pin wr_reset_n_IBUF input.left pinBus D input.left [5:0] pinBus E output.right [0:0] pinBus Q input.left [5:0] pinBus wp_reg[0] output.right [0:0] pinBus wp_reg[0]_0 output.right [0:0] pinBus wp_reg[0]_1 output.right [0:0] pinBus wp_reg[0]_2 output.right [0:0] pinBus wp_reg[0]_3 output.right [0:0] pinBus wp_reg[0]_4 output.right [0:0] pinBus wp_reg[1] output.right [0:0] pinBus wp_reg[1]_0 output.right [0:0] pinBus wp_reg[1]_1 output.right [0:0] pinBus wp_reg[1]_2 output.right [0:0] pinBus wp_reg[1]_3 output.right [0:0] pinBus wp_reg[1]_4 output.right [0:0] pinBus wp_reg[1]_5 output.right [0:0] pinBus wp_reg[1]_6 output.right [0:0] pinBus wp_reg[2] output.right [0:0] pinBus wp_reg[2]_0 output.right [0:0] pinBus wp_reg[2]_1 output.right [0:0] pinBus wp_reg[2]_10 output.right [0:0] pinBus wp_reg[2]_11 output.right [0:0] pinBus wp_reg[2]_12 output.right [0:0] pinBus wp_reg[2]_2 output.right [0:0] pinBus wp_reg[2]_3 output.right [0:0] pinBus wp_reg[2]_4 output.right [0:0] pinBus wp_reg[2]_5 output.right [0:0] pinBus wp_reg[2]_6 output.right [0:0] pinBus wp_reg[2]_7 output.right [0:0] pinBus wp_reg[2]_8 output.right [0:0] pinBus wp_reg[2]_9 output.right [0:0] pinBus wp_reg[3] output.right [0:0] pinBus wp_reg[3]_0 output.right [0:0] pinBus wp_reg[3]_1 output.right [0:0] pinBus wp_reg[3]_10 output.right [0:0] pinBus wp_reg[3]_11 output.right [0:0] pinBus wp_reg[3]_12 output.right [0:0] pinBus wp_reg[3]_13 output.right [0:0] pinBus wp_reg[3]_14 output.right [0:0] pinBus wp_reg[3]_15 output.right [0:0] pinBus wp_reg[3]_2 output.right [0:0] pinBus wp_reg[3]_3 output.right [0:0] pinBus wp_reg[3]_4 output.right [0:0] pinBus wp_reg[3]_5 output.right [0:0] pinBus wp_reg[3]_6 output.right [0:0] pinBus wp_reg[3]_7 output.right [0:0] pinBus wp_reg[3]_8 output.right [0:0] pinBus wp_reg[3]_9 output.right [0:0] pinBus wp_reg[4] output.right [0:0] pinBus wp_reg[4]_0 output.right [0:0] pinBus wp_reg[4]_1 output.right [0:0] pinBus wp_reg[4]_2 output.right [0:0] pinBus wp_reg[4]_3 output.right [0:0] pinBus wp_reg[4]_4 output.right [0:0] pinBus wp_reg[4]_5 output.right [0:0] pinBus wp_reg[5] output.right [0:0] pinBus wp_reg[5]_0 output.right [0:0] pinBus wp_reg[5]_1 output.right [0:0] pinBus wp_reg[5]_2 output.right [0:0] pinBus wp_reg[5]_3 output.right [0:0] pinBus wp_reg[5]_4 output.right [0:0] pinBus wp_reg[5]_5 output.right [0:0] pinBus wp_reg[5]_6 output.right [0:0] pinBus wp_reg[5]_7 output.right [0:0] pinBus wp_reg[5]_8 output.right [0:0] pinBus wp_reg[5]_9 output.right [0:0] boxcolor 1 fillcolor 2 minwidth 13%
load port empty output -pg 1 -lvl 16 -x 13250 -y 41060
load port full output -pg 1 -lvl 16 -x 13250 -y 40990
load port rd_clk input -pg 1 -lvl 0 -x 0 -y 43040
load port rd_en input -pg 1 -lvl 0 -x 0 -y 42980
load port rd_reset_n input -pg 1 -lvl 0 -x 0 -y 43110
load port wr_clk input -pg 1 -lvl 0 -x 0 -y 43620
load port wr_en input -pg 1 -lvl 0 -x 0 -y 42810
load port wr_reset_n input -pg 1 -lvl 0 -x 0 -y 42910
load portBus din input [7:0] -attr @name din[7:0] -pg 1 -lvl 0 -x 0 -y 47140
load portBus dout output [7:0] -attr @name dout[7:0] -pg 1 -lvl 16 -x 13250 -y 41090
load inst din_IBUF[0]_inst IBUF hdi_primitives -attr @cell(#1c1f28) IBUF -pg 1 -lvl 8 -x 2190 -y 47140
load inst din_IBUF[1]_inst IBUF hdi_primitives -attr @cell(#1c1f28) IBUF -pg 1 -lvl 8 -x 2190 -y 47210
load inst din_IBUF[2]_inst IBUF hdi_primitives -attr @cell(#1c1f28) IBUF -pg 1 -lvl 8 -x 2190 -y 47280
load inst din_IBUF[3]_inst IBUF hdi_primitives -attr @cell(#1c1f28) IBUF -pg 1 -lvl 8 -x 2190 -y 47350
load inst din_IBUF[4]_inst IBUF hdi_primitives -attr @cell(#1c1f28) IBUF -pg 1 -lvl 8 -x 2190 -y 47420
load inst din_IBUF[5]_inst IBUF hdi_primitives -attr @cell(#1c1f28) IBUF -pg 1 -lvl 8 -x 2190 -y 47490
load inst din_IBUF[6]_inst IBUF hdi_primitives -attr @cell(#1c1f28) IBUF -pg 1 -lvl 8 -x 2190 -y 47560
load inst din_IBUF[7]_inst IBUF hdi_primitives -attr @cell(#1c1f28) IBUF -pg 1 -lvl 8 -x 2190 -y 47630
load inst dout[0]_i_1 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 13 -x 12690 -y 38950
load inst dout[0]_i_14 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 10 -x 11660 -y 37440
load inst dout[0]_i_15 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 10 -x 11660 -y 37610
load inst dout[0]_i_16 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 10 -x 11660 -y 37780
load inst dout[0]_i_17 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 10 -x 11660 -y 37950
load inst dout[0]_i_18 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 10 -x 11660 -y 38120
load inst dout[0]_i_19 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 10 -x 11660 -y 38290
load inst dout[0]_i_20 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 10 -x 11660 -y 38460
load inst dout[0]_i_21 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 10 -x 11660 -y 38630
load inst dout[0]_i_22 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 10 -x 11660 -y 38800
load inst dout[0]_i_23 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 10 -x 11660 -y 38970
load inst dout[0]_i_24 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 10 -x 11660 -y 39140
load inst dout[0]_i_25 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 10 -x 11660 -y 39310
load inst dout[0]_i_26 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 10 -x 11660 -y 39480
load inst dout[0]_i_27 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 10 -x 11660 -y 39650
load inst dout[0]_i_28 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 10 -x 11660 -y 39820
load inst dout[0]_i_29 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 10 -x 11660 -y 39990
load inst dout[1]_i_1 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 13 -x 12690 -y 39120
load inst dout[1]_i_14 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 10 -x 11660 -y 35390
load inst dout[1]_i_15 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 10 -x 11660 -y 35560
load inst dout[1]_i_16 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 10 -x 11660 -y 35730
load inst dout[1]_i_17 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 10 -x 11660 -y 35900
load inst dout[1]_i_18 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 10 -x 11660 -y 36070
load inst dout[1]_i_19 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 10 -x 11660 -y 36240
load inst dout[1]_i_20 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 10 -x 11660 -y 36410
load inst dout[1]_i_21 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 10 -x 11660 -y 36580
load inst dout[1]_i_22 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 10 -x 11660 -y 36750
load inst dout[1]_i_23 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 10 -x 11660 -y 36920
load inst dout[1]_i_24 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 10 -x 11660 -y 37090
load inst dout[1]_i_25 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 10 -x 11660 -y 37270
load inst dout[1]_i_26 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 10 -x 11660 -y 40160
load inst dout[1]_i_27 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 10 -x 11660 -y 40330
load inst dout[1]_i_28 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 10 -x 11660 -y 40500
load inst dout[1]_i_29 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 10 -x 11660 -y 40670
load inst dout[2]_i_1 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 13 -x 12690 -y 40330
load inst dout[2]_i_14 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 10 -x 11660 -y 40840
load inst dout[2]_i_15 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 10 -x 11660 -y 41020
load inst dout[2]_i_16 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 10 -x 11660 -y 41200
load inst dout[2]_i_17 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 10 -x 11660 -y 41370
load inst dout[2]_i_18 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 10 -x 11660 -y 41540
load inst dout[2]_i_19 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 10 -x 11660 -y 41710
load inst dout[2]_i_20 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 10 -x 11660 -y 41880
load inst dout[2]_i_21 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 10 -x 11660 -y 42050
load inst dout[2]_i_22 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 10 -x 11660 -y 42220
load inst dout[2]_i_23 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 10 -x 11660 -y 42390
load inst dout[2]_i_24 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 10 -x 11660 -y 42560
load inst dout[2]_i_25 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 10 -x 11660 -y 42730
load inst dout[2]_i_26 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 10 -x 11660 -y 42900
load inst dout[2]_i_27 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 10 -x 11660 -y 43070
load inst dout[2]_i_28 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 10 -x 11660 -y 43240
load inst dout[2]_i_29 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 10 -x 11660 -y 43410
load inst dout[3]_i_1 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 13 -x 12690 -y 40500
load inst dout[3]_i_14 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 10 -x 11660 -y 33350
load inst dout[3]_i_15 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 10 -x 11660 -y 33520
load inst dout[3]_i_16 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 10 -x 11660 -y 33690
load inst dout[3]_i_17 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 10 -x 11660 -y 33860
load inst dout[3]_i_18 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 10 -x 11660 -y 34030
load inst dout[3]_i_19 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 10 -x 11660 -y 34200
load inst dout[3]_i_20 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 10 -x 11660 -y 34370
load inst dout[3]_i_21 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 10 -x 11660 -y 34540
load inst dout[3]_i_22 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 10 -x 11660 -y 34710
load inst dout[3]_i_23 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 10 -x 11660 -y 34880
load inst dout[3]_i_24 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 10 -x 11660 -y 35050
load inst dout[3]_i_25 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 10 -x 11660 -y 35220
load inst dout[3]_i_26 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 10 -x 11660 -y 43580
load inst dout[3]_i_27 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 10 -x 11660 -y 43750
load inst dout[3]_i_28 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 10 -x 11660 -y 43920
load inst dout[3]_i_29 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 10 -x 11660 -y 44090
load inst dout[4]_i_1 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 13 -x 12690 -y 40670
load inst dout[4]_i_14 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 10 -x 11660 -y 31310
load inst dout[4]_i_15 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 10 -x 11660 -y 31480
load inst dout[4]_i_16 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 10 -x 11660 -y 31650
load inst dout[4]_i_17 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 10 -x 11660 -y 31820
load inst dout[4]_i_18 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 10 -x 11660 -y 31990
load inst dout[4]_i_19 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 10 -x 11660 -y 32160
load inst dout[4]_i_20 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 10 -x 11660 -y 32330
load inst dout[4]_i_21 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 10 -x 11660 -y 32500
load inst dout[4]_i_22 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 10 -x 11660 -y 32670
load inst dout[4]_i_23 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 10 -x 11660 -y 32840
load inst dout[4]_i_24 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 10 -x 11660 -y 33010
load inst dout[4]_i_25 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 10 -x 11660 -y 33180
load inst dout[4]_i_26 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 10 -x 11660 -y 44260
load inst dout[4]_i_27 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 10 -x 11660 -y 44430
load inst dout[4]_i_28 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 10 -x 11660 -y 44600
load inst dout[4]_i_29 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 10 -x 11660 -y 44770
load inst dout[5]_i_1 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 13 -x 12690 -y 40840
load inst dout[5]_i_14 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 10 -x 11660 -y 29270
load inst dout[5]_i_15 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 10 -x 11660 -y 29440
load inst dout[5]_i_16 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 10 -x 11660 -y 29610
load inst dout[5]_i_17 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 10 -x 11660 -y 29780
load inst dout[5]_i_18 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 10 -x 11660 -y 29950
load inst dout[5]_i_19 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 10 -x 11660 -y 30120
load inst dout[5]_i_20 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 10 -x 11660 -y 30290
load inst dout[5]_i_21 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 10 -x 11660 -y 30460
load inst dout[5]_i_22 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 10 -x 11660 -y 30630
load inst dout[5]_i_23 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 10 -x 11660 -y 30800
load inst dout[5]_i_24 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 10 -x 11660 -y 30970
load inst dout[5]_i_25 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 10 -x 11660 -y 31140
load inst dout[5]_i_26 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 10 -x 11660 -y 44940
load inst dout[5]_i_27 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 10 -x 11660 -y 45110
load inst dout[5]_i_28 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 10 -x 11660 -y 45280
load inst dout[5]_i_29 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 10 -x 11660 -y 45450
load inst dout[6]_i_1 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 13 -x 12690 -y 41090
load inst dout[6]_i_14 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 10 -x 11660 -y 27230
load inst dout[6]_i_15 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 10 -x 11660 -y 27400
load inst dout[6]_i_16 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 10 -x 11660 -y 27570
load inst dout[6]_i_17 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 10 -x 11660 -y 27740
load inst dout[6]_i_18 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 10 -x 11660 -y 27910
load inst dout[6]_i_19 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 10 -x 11660 -y 28080
load inst dout[6]_i_20 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 10 -x 11660 -y 28250
load inst dout[6]_i_21 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 10 -x 11660 -y 28420
load inst dout[6]_i_22 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 10 -x 11660 -y 28590
load inst dout[6]_i_23 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 10 -x 11660 -y 28760
load inst dout[6]_i_24 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 10 -x 11660 -y 28930
load inst dout[6]_i_25 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 10 -x 11660 -y 29100
load inst dout[6]_i_26 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 10 -x 11660 -y 45620
load inst dout[6]_i_27 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 10 -x 11660 -y 45790
load inst dout[6]_i_28 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 10 -x 11660 -y 45960
load inst dout[6]_i_29 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 10 -x 11660 -y 46130
load inst dout[7]_i_15 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 10 -x 11660 -y 46310
load inst dout[7]_i_16 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 10 -x 11660 -y 46490
load inst dout[7]_i_17 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 10 -x 11660 -y 46660
load inst dout[7]_i_18 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 10 -x 11660 -y 46830
load inst dout[7]_i_19 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 10 -x 11660 -y 47000
load inst dout[7]_i_2 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 13 -x 12690 -y 47190
load inst dout[7]_i_20 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 10 -x 11660 -y 47170
load inst dout[7]_i_21 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 10 -x 11660 -y 47340
load inst dout[7]_i_22 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 10 -x 11660 -y 47510
load inst dout[7]_i_23 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 10 -x 11660 -y 47680
load inst dout[7]_i_24 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 10 -x 11660 -y 47850
load inst dout[7]_i_25 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 10 -x 11660 -y 48020
load inst dout[7]_i_26 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 10 -x 11660 -y 48190
load inst dout[7]_i_27 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 10 -x 11660 -y 48360
load inst dout[7]_i_28 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 10 -x 11660 -y 48530
load inst dout[7]_i_29 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 10 -x 11660 -y 48700
load inst dout[7]_i_30 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 10 -x 11660 -y 48870
load inst dout_OBUF[0]_inst OBUF hdi_primitives -attr @cell(#1c1f28) OBUF -pg 1 -lvl 15 -x 13070 -y 40090
load inst dout_OBUF[1]_inst OBUF hdi_primitives -attr @cell(#1c1f28) OBUF -pg 1 -lvl 15 -x 13070 -y 40240
load inst dout_OBUF[2]_inst OBUF hdi_primitives -attr @cell(#1c1f28) OBUF -pg 1 -lvl 15 -x 13070 -y 40390
load inst dout_OBUF[3]_inst OBUF hdi_primitives -attr @cell(#1c1f28) OBUF -pg 1 -lvl 15 -x 13070 -y 40540
load inst dout_OBUF[4]_inst OBUF hdi_primitives -attr @cell(#1c1f28) OBUF -pg 1 -lvl 15 -x 13070 -y 41140
load inst dout_OBUF[5]_inst OBUF hdi_primitives -attr @cell(#1c1f28) OBUF -pg 1 -lvl 15 -x 13070 -y 41290
load inst dout_OBUF[6]_inst OBUF hdi_primitives -attr @cell(#1c1f28) OBUF -pg 1 -lvl 15 -x 13070 -y 41440
load inst dout_OBUF[7]_inst OBUF hdi_primitives -attr @cell(#1c1f28) OBUF -pg 1 -lvl 15 -x 13070 -y 46290
load inst dout_reg[0] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 14 -x 12950 -y 40090
load inst dout_reg[0]_i_10 MUXF7 hdi_primitives -attr @cell(#1c1f28) MUXF7 -pg 1 -lvl 11 -x 11890 -y 39010
load inst dout_reg[0]_i_11 MUXF7 hdi_primitives -attr @cell(#1c1f28) MUXF7 -pg 1 -lvl 11 -x 11890 -y 39200
load inst dout_reg[0]_i_12 MUXF7 hdi_primitives -attr @cell(#1c1f28) MUXF7 -pg 1 -lvl 11 -x 11890 -y 39540
load inst dout_reg[0]_i_13 MUXF7 hdi_primitives -attr @cell(#1c1f28) MUXF7 -pg 1 -lvl 11 -x 11890 -y 39880
load inst dout_reg[0]_i_2 MUXF8 hdi_primitives -attr @cell(#1c1f28) MUXF8 -pg 1 -lvl 12 -x 12100 -y 37980
load inst dout_reg[0]_i_3 MUXF8 hdi_primitives -attr @cell(#1c1f28) MUXF8 -pg 1 -lvl 12 -x 12100 -y 38510
load inst dout_reg[0]_i_4 MUXF8 hdi_primitives -attr @cell(#1c1f28) MUXF8 -pg 1 -lvl 12 -x 12100 -y 39020
load inst dout_reg[0]_i_5 MUXF8 hdi_primitives -attr @cell(#1c1f28) MUXF8 -pg 1 -lvl 12 -x 12100 -y 39550
load inst dout_reg[0]_i_6 MUXF7 hdi_primitives -attr @cell(#1c1f28) MUXF7 -pg 1 -lvl 11 -x 11890 -y 37650
load inst dout_reg[0]_i_7 MUXF7 hdi_primitives -attr @cell(#1c1f28) MUXF7 -pg 1 -lvl 11 -x 11890 -y 37990
load inst dout_reg[0]_i_8 MUXF7 hdi_primitives -attr @cell(#1c1f28) MUXF7 -pg 1 -lvl 11 -x 11890 -y 38330
load inst dout_reg[0]_i_9 MUXF7 hdi_primitives -attr @cell(#1c1f28) MUXF7 -pg 1 -lvl 11 -x 11890 -y 38520
load inst dout_reg[1] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 14 -x 12950 -y 40240
load inst dout_reg[1]_i_10 MUXF7 hdi_primitives -attr @cell(#1c1f28) MUXF7 -pg 1 -lvl 11 -x 11890 -y 36960
load inst dout_reg[1]_i_11 MUXF7 hdi_primitives -attr @cell(#1c1f28) MUXF7 -pg 1 -lvl 11 -x 11890 -y 37150
load inst dout_reg[1]_i_12 MUXF7 hdi_primitives -attr @cell(#1c1f28) MUXF7 -pg 1 -lvl 11 -x 11890 -y 40220
load inst dout_reg[1]_i_13 MUXF7 hdi_primitives -attr @cell(#1c1f28) MUXF7 -pg 1 -lvl 11 -x 11890 -y 40560
load inst dout_reg[1]_i_2 MUXF8 hdi_primitives -attr @cell(#1c1f28) MUXF8 -pg 1 -lvl 12 -x 12100 -y 35780
load inst dout_reg[1]_i_3 MUXF8 hdi_primitives -attr @cell(#1c1f28) MUXF8 -pg 1 -lvl 12 -x 12100 -y 36460
load inst dout_reg[1]_i_4 MUXF8 hdi_primitives -attr @cell(#1c1f28) MUXF8 -pg 1 -lvl 12 -x 12100 -y 37140
load inst dout_reg[1]_i_5 MUXF8 hdi_primitives -attr @cell(#1c1f28) MUXF8 -pg 1 -lvl 12 -x 12100 -y 40230
load inst dout_reg[1]_i_6 MUXF7 hdi_primitives -attr @cell(#1c1f28) MUXF7 -pg 1 -lvl 11 -x 11890 -y 35600
load inst dout_reg[1]_i_7 MUXF7 hdi_primitives -attr @cell(#1c1f28) MUXF7 -pg 1 -lvl 11 -x 11890 -y 35790
load inst dout_reg[1]_i_8 MUXF7 hdi_primitives -attr @cell(#1c1f28) MUXF7 -pg 1 -lvl 11 -x 11890 -y 36280
load inst dout_reg[1]_i_9 MUXF7 hdi_primitives -attr @cell(#1c1f28) MUXF7 -pg 1 -lvl 11 -x 11890 -y 36470
load inst dout_reg[2] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 14 -x 12950 -y 40390
load inst dout_reg[2]_i_10 MUXF7 hdi_primitives -attr @cell(#1c1f28) MUXF7 -pg 1 -lvl 11 -x 11890 -y 42280
load inst dout_reg[2]_i_11 MUXF7 hdi_primitives -attr @cell(#1c1f28) MUXF7 -pg 1 -lvl 11 -x 11890 -y 42620
load inst dout_reg[2]_i_12 MUXF7 hdi_primitives -attr @cell(#1c1f28) MUXF7 -pg 1 -lvl 11 -x 11890 -y 42960
load inst dout_reg[2]_i_13 MUXF7 hdi_primitives -attr @cell(#1c1f28) MUXF7 -pg 1 -lvl 11 -x 11890 -y 43300
load inst dout_reg[2]_i_2 MUXF8 hdi_primitives -attr @cell(#1c1f28) MUXF8 -pg 1 -lvl 12 -x 12100 -y 40910
load inst dout_reg[2]_i_3 MUXF8 hdi_primitives -attr @cell(#1c1f28) MUXF8 -pg 1 -lvl 12 -x 12100 -y 41610
load inst dout_reg[2]_i_4 MUXF8 hdi_primitives -attr @cell(#1c1f28) MUXF8 -pg 1 -lvl 12 -x 12100 -y 42290
load inst dout_reg[2]_i_5 MUXF8 hdi_primitives -attr @cell(#1c1f28) MUXF8 -pg 1 -lvl 12 -x 12100 -y 42970
load inst dout_reg[2]_i_6 MUXF7 hdi_primitives -attr @cell(#1c1f28) MUXF7 -pg 1 -lvl 11 -x 11890 -y 40900
load inst dout_reg[2]_i_7 MUXF7 hdi_primitives -attr @cell(#1c1f28) MUXF7 -pg 1 -lvl 11 -x 11890 -y 41090
load inst dout_reg[2]_i_8 MUXF7 hdi_primitives -attr @cell(#1c1f28) MUXF7 -pg 1 -lvl 11 -x 11890 -y 41600
load inst dout_reg[2]_i_9 MUXF7 hdi_primitives -attr @cell(#1c1f28) MUXF7 -pg 1 -lvl 11 -x 11890 -y 41940
load inst dout_reg[3] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 14 -x 12950 -y 40540
load inst dout_reg[3]_i_10 MUXF7 hdi_primitives -attr @cell(#1c1f28) MUXF7 -pg 1 -lvl 11 -x 11890 -y 34920
load inst dout_reg[3]_i_11 MUXF7 hdi_primitives -attr @cell(#1c1f28) MUXF7 -pg 1 -lvl 11 -x 11890 -y 35110
load inst dout_reg[3]_i_12 MUXF7 hdi_primitives -attr @cell(#1c1f28) MUXF7 -pg 1 -lvl 11 -x 11890 -y 43640
load inst dout_reg[3]_i_13 MUXF7 hdi_primitives -attr @cell(#1c1f28) MUXF7 -pg 1 -lvl 11 -x 11890 -y 43980
load inst dout_reg[3]_i_2 MUXF8 hdi_primitives -attr @cell(#1c1f28) MUXF8 -pg 1 -lvl 12 -x 12100 -y 33740
load inst dout_reg[3]_i_3 MUXF8 hdi_primitives -attr @cell(#1c1f28) MUXF8 -pg 1 -lvl 12 -x 12100 -y 34420
load inst dout_reg[3]_i_4 MUXF8 hdi_primitives -attr @cell(#1c1f28) MUXF8 -pg 1 -lvl 12 -x 12100 -y 35100
load inst dout_reg[3]_i_5 MUXF8 hdi_primitives -attr @cell(#1c1f28) MUXF8 -pg 1 -lvl 12 -x 12100 -y 43650
load inst dout_reg[3]_i_6 MUXF7 hdi_primitives -attr @cell(#1c1f28) MUXF7 -pg 1 -lvl 11 -x 11890 -y 33560
load inst dout_reg[3]_i_7 MUXF7 hdi_primitives -attr @cell(#1c1f28) MUXF7 -pg 1 -lvl 11 -x 11890 -y 33750
load inst dout_reg[3]_i_8 MUXF7 hdi_primitives -attr @cell(#1c1f28) MUXF7 -pg 1 -lvl 11 -x 11890 -y 34240
load inst dout_reg[3]_i_9 MUXF7 hdi_primitives -attr @cell(#1c1f28) MUXF7 -pg 1 -lvl 11 -x 11890 -y 34430
load inst dout_reg[4] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 14 -x 12950 -y 41140
load inst dout_reg[4]_i_10 MUXF7 hdi_primitives -attr @cell(#1c1f28) MUXF7 -pg 1 -lvl 11 -x 11890 -y 32880
load inst dout_reg[4]_i_11 MUXF7 hdi_primitives -attr @cell(#1c1f28) MUXF7 -pg 1 -lvl 11 -x 11890 -y 33070
load inst dout_reg[4]_i_12 MUXF7 hdi_primitives -attr @cell(#1c1f28) MUXF7 -pg 1 -lvl 11 -x 11890 -y 44320
load inst dout_reg[4]_i_13 MUXF7 hdi_primitives -attr @cell(#1c1f28) MUXF7 -pg 1 -lvl 11 -x 11890 -y 44660
load inst dout_reg[4]_i_2 MUXF8 hdi_primitives -attr @cell(#1c1f28) MUXF8 -pg 1 -lvl 12 -x 12100 -y 31700
load inst dout_reg[4]_i_3 MUXF8 hdi_primitives -attr @cell(#1c1f28) MUXF8 -pg 1 -lvl 12 -x 12100 -y 32380
load inst dout_reg[4]_i_4 MUXF8 hdi_primitives -attr @cell(#1c1f28) MUXF8 -pg 1 -lvl 12 -x 12100 -y 33060
load inst dout_reg[4]_i_5 MUXF8 hdi_primitives -attr @cell(#1c1f28) MUXF8 -pg 1 -lvl 12 -x 12100 -y 44330
load inst dout_reg[4]_i_6 MUXF7 hdi_primitives -attr @cell(#1c1f28) MUXF7 -pg 1 -lvl 11 -x 11890 -y 31520
load inst dout_reg[4]_i_7 MUXF7 hdi_primitives -attr @cell(#1c1f28) MUXF7 -pg 1 -lvl 11 -x 11890 -y 31710
load inst dout_reg[4]_i_8 MUXF7 hdi_primitives -attr @cell(#1c1f28) MUXF7 -pg 1 -lvl 11 -x 11890 -y 32200
load inst dout_reg[4]_i_9 MUXF7 hdi_primitives -attr @cell(#1c1f28) MUXF7 -pg 1 -lvl 11 -x 11890 -y 32390
load inst dout_reg[5] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 14 -x 12950 -y 41290
load inst dout_reg[5]_i_10 MUXF7 hdi_primitives -attr @cell(#1c1f28) MUXF7 -pg 1 -lvl 11 -x 11890 -y 30840
load inst dout_reg[5]_i_11 MUXF7 hdi_primitives -attr @cell(#1c1f28) MUXF7 -pg 1 -lvl 11 -x 11890 -y 31030
load inst dout_reg[5]_i_12 MUXF7 hdi_primitives -attr @cell(#1c1f28) MUXF7 -pg 1 -lvl 11 -x 11890 -y 45000
load inst dout_reg[5]_i_13 MUXF7 hdi_primitives -attr @cell(#1c1f28) MUXF7 -pg 1 -lvl 11 -x 11890 -y 45340
load inst dout_reg[5]_i_2 MUXF8 hdi_primitives -attr @cell(#1c1f28) MUXF8 -pg 1 -lvl 12 -x 12100 -y 29660
load inst dout_reg[5]_i_3 MUXF8 hdi_primitives -attr @cell(#1c1f28) MUXF8 -pg 1 -lvl 12 -x 12100 -y 30340
load inst dout_reg[5]_i_4 MUXF8 hdi_primitives -attr @cell(#1c1f28) MUXF8 -pg 1 -lvl 12 -x 12100 -y 31020
load inst dout_reg[5]_i_5 MUXF8 hdi_primitives -attr @cell(#1c1f28) MUXF8 -pg 1 -lvl 12 -x 12100 -y 45010
load inst dout_reg[5]_i_6 MUXF7 hdi_primitives -attr @cell(#1c1f28) MUXF7 -pg 1 -lvl 11 -x 11890 -y 29480
load inst dout_reg[5]_i_7 MUXF7 hdi_primitives -attr @cell(#1c1f28) MUXF7 -pg 1 -lvl 11 -x 11890 -y 29670
load inst dout_reg[5]_i_8 MUXF7 hdi_primitives -attr @cell(#1c1f28) MUXF7 -pg 1 -lvl 11 -x 11890 -y 30160
load inst dout_reg[5]_i_9 MUXF7 hdi_primitives -attr @cell(#1c1f28) MUXF7 -pg 1 -lvl 11 -x 11890 -y 30350
load inst dout_reg[6] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 14 -x 12950 -y 41440
load inst dout_reg[6]_i_10 MUXF7 hdi_primitives -attr @cell(#1c1f28) MUXF7 -pg 1 -lvl 11 -x 11890 -y 28800
load inst dout_reg[6]_i_11 MUXF7 hdi_primitives -attr @cell(#1c1f28) MUXF7 -pg 1 -lvl 11 -x 11890 -y 28990
load inst dout_reg[6]_i_12 MUXF7 hdi_primitives -attr @cell(#1c1f28) MUXF7 -pg 1 -lvl 11 -x 11890 -y 45830
load inst dout_reg[6]_i_13 MUXF7 hdi_primitives -attr @cell(#1c1f28) MUXF7 -pg 1 -lvl 11 -x 11890 -y 46020
load inst dout_reg[6]_i_2 MUXF8 hdi_primitives -attr @cell(#1c1f28) MUXF8 -pg 1 -lvl 12 -x 12100 -y 27770
load inst dout_reg[6]_i_3 MUXF8 hdi_primitives -attr @cell(#1c1f28) MUXF8 -pg 1 -lvl 12 -x 12100 -y 28450
load inst dout_reg[6]_i_4 MUXF8 hdi_primitives -attr @cell(#1c1f28) MUXF8 -pg 1 -lvl 12 -x 12100 -y 28980
load inst dout_reg[6]_i_5 MUXF8 hdi_primitives -attr @cell(#1c1f28) MUXF8 -pg 1 -lvl 12 -x 12100 -y 45840
load inst dout_reg[6]_i_6 MUXF7 hdi_primitives -attr @cell(#1c1f28) MUXF7 -pg 1 -lvl 11 -x 11890 -y 27440
load inst dout_reg[6]_i_7 MUXF7 hdi_primitives -attr @cell(#1c1f28) MUXF7 -pg 1 -lvl 11 -x 11890 -y 27780
load inst dout_reg[6]_i_8 MUXF7 hdi_primitives -attr @cell(#1c1f28) MUXF7 -pg 1 -lvl 11 -x 11890 -y 28120
load inst dout_reg[6]_i_9 MUXF7 hdi_primitives -attr @cell(#1c1f28) MUXF7 -pg 1 -lvl 11 -x 11890 -y 28460
load inst dout_reg[7] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 14 -x 12950 -y 46290
load inst dout_reg[7]_i_10 MUXF7 hdi_primitives -attr @cell(#1c1f28) MUXF7 -pg 1 -lvl 11 -x 11890 -y 47400
load inst dout_reg[7]_i_11 MUXF7 hdi_primitives -attr @cell(#1c1f28) MUXF7 -pg 1 -lvl 11 -x 11890 -y 47740
load inst dout_reg[7]_i_12 MUXF7 hdi_primitives -attr @cell(#1c1f28) MUXF7 -pg 1 -lvl 11 -x 11890 -y 48080
load inst dout_reg[7]_i_13 MUXF7 hdi_primitives -attr @cell(#1c1f28) MUXF7 -pg 1 -lvl 11 -x 11890 -y 48420
load inst dout_reg[7]_i_14 MUXF7 hdi_primitives -attr @cell(#1c1f28) MUXF7 -pg 1 -lvl 11 -x 11890 -y 48760
load inst dout_reg[7]_i_3 MUXF8 hdi_primitives -attr @cell(#1c1f28) MUXF8 -pg 1 -lvl 12 -x 12100 -y 46710
load inst dout_reg[7]_i_4 MUXF8 hdi_primitives -attr @cell(#1c1f28) MUXF8 -pg 1 -lvl 12 -x 12100 -y 47220
load inst dout_reg[7]_i_5 MUXF8 hdi_primitives -attr @cell(#1c1f28) MUXF8 -pg 1 -lvl 12 -x 12100 -y 47750
load inst dout_reg[7]_i_6 MUXF8 hdi_primitives -attr @cell(#1c1f28) MUXF8 -pg 1 -lvl 12 -x 12100 -y 48430
load inst dout_reg[7]_i_7 MUXF7 hdi_primitives -attr @cell(#1c1f28) MUXF7 -pg 1 -lvl 11 -x 11890 -y 46530
load inst dout_reg[7]_i_8 MUXF7 hdi_primitives -attr @cell(#1c1f28) MUXF7 -pg 1 -lvl 11 -x 11890 -y 46720
load inst dout_reg[7]_i_9 MUXF7 hdi_primitives -attr @cell(#1c1f28) MUXF7 -pg 1 -lvl 11 -x 11890 -y 47210
load inst empty_OBUF_inst OBUF hdi_primitives -attr @cell(#1c1f28) OBUF -pg 1 -lvl 15 -x 13070 -y 41060
load inst four dff work:dff:NOFILE -autohide -attr @cell(#1c1f28) dff -pinBusAttr E @name E -pinBusAttr Q @name Q[5:0] -pinBusAttr q_reg[5]_0 @name q_reg[5]_0[5:0] -pinBusAttr rp_reg[0] @name rp_reg[0] -pg 1 -lvl 5 -x 1270 -y 43000
load inst full_OBUF_inst OBUF hdi_primitives -attr @cell(#1c1f28) OBUF -pg 1 -lvl 15 -x 13070 -y 40990
load inst mem_reg[0][0] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 40280
load inst mem_reg[0][1] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 41780
load inst mem_reg[0][2] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 42740
load inst mem_reg[0][3] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 43190
load inst mem_reg[0][4] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 46520
load inst mem_reg[0][5] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 46700
load inst mem_reg[0][6] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 46850
load inst mem_reg[0][7] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 48230
load inst mem_reg[10][0] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 40730
load inst mem_reg[10][1] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 42260
load inst mem_reg[10][2] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 47000
load inst mem_reg[10][3] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 47180
load inst mem_reg[10][4] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 47330
load inst mem_reg[10][5] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 47480
load inst mem_reg[10][6] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 47630
load inst mem_reg[10][7] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 48380
load inst mem_reg[11][0] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 40880
load inst mem_reg[11][1] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 42440
load inst mem_reg[11][2] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 43040
load inst mem_reg[11][3] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 43940
load inst mem_reg[11][4] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 44690
load inst mem_reg[11][5] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 45290
load inst mem_reg[11][6] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 45920
load inst mem_reg[11][7] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 48080
load inst mem_reg[12][0] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 230
load inst mem_reg[12][1] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 380
load inst mem_reg[12][2] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 830
load inst mem_reg[12][3] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 980
load inst mem_reg[12][4] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 1280
load inst mem_reg[12][5] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 1730
load inst mem_reg[12][6] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 2780
load inst mem_reg[12][7] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 3980
load inst mem_reg[13][0] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 1880
load inst mem_reg[13][1] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 2030
load inst mem_reg[13][2] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 2180
load inst mem_reg[13][3] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 2330
load inst mem_reg[13][4] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 2480
load inst mem_reg[13][5] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 2930
load inst mem_reg[13][6] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 4130
load inst mem_reg[13][7] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 4280
load inst mem_reg[14][0] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 3080
load inst mem_reg[14][1] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 3230
load inst mem_reg[14][2] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 3380
load inst mem_reg[14][3] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 3530
load inst mem_reg[14][4] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 3680
load inst mem_reg[14][5] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 4430
load inst mem_reg[14][6] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 4580
load inst mem_reg[14][7] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 4730
load inst mem_reg[15][0] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 31730
load inst mem_reg[15][1] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 31880
load inst mem_reg[15][2] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 32030
load inst mem_reg[15][3] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 32180
load inst mem_reg[15][4] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 32330
load inst mem_reg[15][5] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 32480
load inst mem_reg[15][6] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 32630
load inst mem_reg[15][7] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 32780
load inst mem_reg[16][0] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 4880
load inst mem_reg[16][1] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 5030
load inst mem_reg[16][2] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 5180
load inst mem_reg[16][3] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 5330
load inst mem_reg[16][4] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 5480
load inst mem_reg[16][5] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 5630
load inst mem_reg[16][6] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 5780
load inst mem_reg[16][7] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 5930
load inst mem_reg[17][0] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 6080
load inst mem_reg[17][1] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 6230
load inst mem_reg[17][2] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 6380
load inst mem_reg[17][3] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 6530
load inst mem_reg[17][4] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 6680
load inst mem_reg[17][5] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 6830
load inst mem_reg[17][6] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 6980
load inst mem_reg[17][7] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 7130
load inst mem_reg[18][0] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 7280
load inst mem_reg[18][1] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 7430
load inst mem_reg[18][2] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 7580
load inst mem_reg[18][3] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 7730
load inst mem_reg[18][4] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 7880
load inst mem_reg[18][5] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 8030
load inst mem_reg[18][6] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 8180
load inst mem_reg[18][7] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 8330
load inst mem_reg[19][0] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 8480
load inst mem_reg[19][1] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 8630
load inst mem_reg[19][2] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 8780
load inst mem_reg[19][3] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 8930
load inst mem_reg[19][4] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 9080
load inst mem_reg[19][5] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 9230
load inst mem_reg[19][6] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 9380
load inst mem_reg[19][7] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 9530
load inst mem_reg[1][0] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 80
load inst mem_reg[1][1] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 530
load inst mem_reg[1][2] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 680
load inst mem_reg[1][3] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 1130
load inst mem_reg[1][4] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 1430
load inst mem_reg[1][5] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 1580
load inst mem_reg[1][6] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 2630
load inst mem_reg[1][7] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 3830
load inst mem_reg[20][0] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 28430
load inst mem_reg[20][1] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 28580
load inst mem_reg[20][2] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 28730
load inst mem_reg[20][3] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 28880
load inst mem_reg[20][4] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 29030
load inst mem_reg[20][5] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 29180
load inst mem_reg[20][6] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 29330
load inst mem_reg[20][7] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 32930
load inst mem_reg[21][0] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 9680
load inst mem_reg[21][1] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 9830
load inst mem_reg[21][2] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 9980
load inst mem_reg[21][3] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 10130
load inst mem_reg[21][4] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 10280
load inst mem_reg[21][5] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 10430
load inst mem_reg[21][6] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 10580
load inst mem_reg[21][7] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 10730
load inst mem_reg[22][0] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 25730
load inst mem_reg[22][1] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 25880
load inst mem_reg[22][2] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 26030
load inst mem_reg[22][3] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 26180
load inst mem_reg[22][4] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 26330
load inst mem_reg[22][5] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 26480
load inst mem_reg[22][6] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 26630
load inst mem_reg[22][7] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 45140
load inst mem_reg[23][0] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 36530
load inst mem_reg[23][1] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 36680
load inst mem_reg[23][2] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 36830
load inst mem_reg[23][3] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 36980
load inst mem_reg[23][4] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 37130
load inst mem_reg[23][5] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 37280
load inst mem_reg[23][6] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 37430
load inst mem_reg[23][7] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 46070
load inst mem_reg[24][0] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 10880
load inst mem_reg[24][1] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 11030
load inst mem_reg[24][2] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 11180
load inst mem_reg[24][3] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 11330
load inst mem_reg[24][4] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 11480
load inst mem_reg[24][5] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 11630
load inst mem_reg[24][6] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 11780
load inst mem_reg[24][7] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 11930
load inst mem_reg[25][0] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 12080
load inst mem_reg[25][1] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 12230
load inst mem_reg[25][2] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 12380
load inst mem_reg[25][3] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 12530
load inst mem_reg[25][4] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 12680
load inst mem_reg[25][5] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 12830
load inst mem_reg[25][6] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 12980
load inst mem_reg[25][7] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 13130
load inst mem_reg[26][0] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 13280
load inst mem_reg[26][1] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 13430
load inst mem_reg[26][2] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 13580
load inst mem_reg[26][3] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 13730
load inst mem_reg[26][4] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 13880
load inst mem_reg[26][5] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 14030
load inst mem_reg[26][6] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 14180
load inst mem_reg[26][7] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 14330
load inst mem_reg[27][0] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 14480
load inst mem_reg[27][1] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 14630
load inst mem_reg[27][2] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 14780
load inst mem_reg[27][3] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 14930
load inst mem_reg[27][4] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 15080
load inst mem_reg[27][5] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 15230
load inst mem_reg[27][6] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 15380
load inst mem_reg[27][7] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 15530
load inst mem_reg[28][0] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 15680
load inst mem_reg[28][1] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 15830
load inst mem_reg[28][2] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 15980
load inst mem_reg[28][3] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 16130
load inst mem_reg[28][4] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 16280
load inst mem_reg[28][5] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 16430
load inst mem_reg[28][6] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 16580
load inst mem_reg[28][7] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 16730
load inst mem_reg[29][0] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 16880
load inst mem_reg[29][1] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 17030
load inst mem_reg[29][2] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 17180
load inst mem_reg[29][3] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 17330
load inst mem_reg[29][4] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 17480
load inst mem_reg[29][5] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 17630
load inst mem_reg[29][6] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 17780
load inst mem_reg[29][7] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 17930
load inst mem_reg[2][0] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 40430
load inst mem_reg[2][1] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 41930
load inst mem_reg[2][2] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 42590
load inst mem_reg[2][3] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 43340
load inst mem_reg[2][4] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 44240
load inst mem_reg[2][5] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 44990
load inst mem_reg[2][6] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 45470
load inst mem_reg[2][7] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 45770
load inst mem_reg[30][0] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 18080
load inst mem_reg[30][1] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 18230
load inst mem_reg[30][2] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 18380
load inst mem_reg[30][3] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 18530
load inst mem_reg[30][4] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 18680
load inst mem_reg[30][5] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 18830
load inst mem_reg[30][6] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 18980
load inst mem_reg[30][7] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 19130
load inst mem_reg[31][0] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 19280
load inst mem_reg[31][1] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 19430
load inst mem_reg[31][2] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 19580
load inst mem_reg[31][3] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 19730
load inst mem_reg[31][4] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 19880
load inst mem_reg[31][5] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 20030
load inst mem_reg[31][6] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 20180
load inst mem_reg[31][7] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 20330
load inst mem_reg[32][0] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 33380
load inst mem_reg[32][1] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 33530
load inst mem_reg[32][2] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 33680
load inst mem_reg[32][3] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 33830
load inst mem_reg[32][4] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 33980
load inst mem_reg[32][5] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 34130
load inst mem_reg[32][6] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 34280
load inst mem_reg[32][7] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 44390
load inst mem_reg[33][0] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 20480
load inst mem_reg[33][1] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 20630
load inst mem_reg[33][2] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 20780
load inst mem_reg[33][3] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 26780
load inst mem_reg[33][4] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 26930
load inst mem_reg[33][5] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 27080
load inst mem_reg[33][6] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 27230
load inst mem_reg[33][7] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 33080
load inst mem_reg[34][0] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 29480
load inst mem_reg[34][1] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 29630
load inst mem_reg[34][2] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 29780
load inst mem_reg[34][3] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 29930
load inst mem_reg[34][4] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 30080
load inst mem_reg[34][5] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 30230
load inst mem_reg[34][6] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 30380
load inst mem_reg[34][7] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 33230
load inst mem_reg[35][0] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 34430
load inst mem_reg[35][1] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 34580
load inst mem_reg[35][2] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 34730
load inst mem_reg[35][3] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 34880
load inst mem_reg[35][4] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 35030
load inst mem_reg[35][5] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 35180
load inst mem_reg[35][6] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 35330
load inst mem_reg[35][7] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 44540
load inst mem_reg[36][0] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 27380
load inst mem_reg[36][1] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 27530
load inst mem_reg[36][2] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 27680
load inst mem_reg[36][3] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 27830
load inst mem_reg[36][4] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 27980
load inst mem_reg[36][5] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 28130
load inst mem_reg[36][6] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 28280
load inst mem_reg[36][7] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 43640
load inst mem_reg[37][0] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 20930
load inst mem_reg[37][1] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 21080
load inst mem_reg[37][2] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 21230
load inst mem_reg[37][3] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 21380
load inst mem_reg[37][4] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 21530
load inst mem_reg[37][5] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 21680
load inst mem_reg[37][6] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 21830
load inst mem_reg[37][7] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 21980
load inst mem_reg[38][0] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 22130
load inst mem_reg[38][1] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 22280
load inst mem_reg[38][2] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 22430
load inst mem_reg[38][3] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 22580
load inst mem_reg[38][4] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 22730
load inst mem_reg[38][5] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 22880
load inst mem_reg[38][6] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 23030
load inst mem_reg[38][7] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 23180
load inst mem_reg[39][0] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 23330
load inst mem_reg[39][1] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 23480
load inst mem_reg[39][2] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 23630
load inst mem_reg[39][3] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 23780
load inst mem_reg[39][4] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 23930
load inst mem_reg[39][5] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 24080
load inst mem_reg[39][6] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 24230
load inst mem_reg[39][7] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 24380
load inst mem_reg[3][0] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 40580
load inst mem_reg[3][1] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 42080
load inst mem_reg[3][2] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 42890
load inst mem_reg[3][3] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 43490
load inst mem_reg[3][4] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 44090
load inst mem_reg[3][5] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 44840
load inst mem_reg[3][6] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 45620
load inst mem_reg[3][7] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 47930
load inst mem_reg[40][0] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 35480
load inst mem_reg[40][1] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 35630
load inst mem_reg[40][2] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 35780
load inst mem_reg[40][3] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 35930
load inst mem_reg[40][4] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 36080
load inst mem_reg[40][5] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 36230
load inst mem_reg[40][6] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 36380
load inst mem_reg[40][7] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 46220
load inst mem_reg[41][0] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 24530
load inst mem_reg[41][1] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 24680
load inst mem_reg[41][2] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 24830
load inst mem_reg[41][3] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 24980
load inst mem_reg[41][4] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 25130
load inst mem_reg[41][5] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 25280
load inst mem_reg[41][6] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 25430
load inst mem_reg[41][7] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 25580
load inst mem_reg[42][0] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 37580
load inst mem_reg[42][1] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 37730
load inst mem_reg[42][2] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 37880
load inst mem_reg[42][3] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 38030
load inst mem_reg[42][4] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 38180
load inst mem_reg[42][5] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 38330
load inst mem_reg[42][6] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 38480
load inst mem_reg[42][7] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 46370
load inst mem_reg[43][0] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 38630
load inst mem_reg[43][1] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 38780
load inst mem_reg[43][2] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 41030
load inst mem_reg[43][3] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 41180
load inst mem_reg[43][4] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 41330
load inst mem_reg[43][5] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 41480
load inst mem_reg[43][6] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 41630
load inst mem_reg[43][7] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 47780
load inst mem_reg[44][0] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 38930
load inst mem_reg[44][1] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 39080
load inst mem_reg[44][2] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 39530
load inst mem_reg[44][3] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 39680
load inst mem_reg[44][4] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 39830
load inst mem_reg[44][5] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 39980
load inst mem_reg[44][6] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 40130
load inst mem_reg[44][7] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 43790
load inst mem_reg[45][0] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 39230
load inst mem_reg[45][1] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 39380
load inst mem_reg[45][2] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 48530
load inst mem_reg[45][3] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 48680
load inst mem_reg[45][4] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 48830
load inst mem_reg[45][5] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 48980
load inst mem_reg[45][6] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 49130
load inst mem_reg[45][7] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 49280
load inst mem_reg[46][0] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 49430
load inst mem_reg[46][1] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 49580
load inst mem_reg[46][2] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 49730
load inst mem_reg[46][3] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 49880
load inst mem_reg[46][4] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 50030
load inst mem_reg[46][5] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 50180
load inst mem_reg[46][6] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 50330
load inst mem_reg[46][7] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 50480
load inst mem_reg[47][0] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 50630
load inst mem_reg[47][1] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 50780
load inst mem_reg[47][2] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 50930
load inst mem_reg[47][3] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 51080
load inst mem_reg[47][4] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 51230
load inst mem_reg[47][5] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 51380
load inst mem_reg[47][6] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 51530
load inst mem_reg[47][7] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 51680
load inst mem_reg[48][0] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 51830
load inst mem_reg[48][1] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 51980
load inst mem_reg[48][2] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 52130
load inst mem_reg[48][3] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 52280
load inst mem_reg[48][4] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 52430
load inst mem_reg[48][5] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 52580
load inst mem_reg[48][6] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 52730
load inst mem_reg[48][7] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 52880
load inst mem_reg[49][0] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 53030
load inst mem_reg[49][1] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 53180
load inst mem_reg[49][2] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 53330
load inst mem_reg[49][3] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 53480
load inst mem_reg[49][4] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 53630
load inst mem_reg[49][5] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 53780
load inst mem_reg[49][6] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 53930
load inst mem_reg[49][7] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 54080
load inst mem_reg[4][0] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 30530
load inst mem_reg[4][1] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 30680
load inst mem_reg[4][2] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 30830
load inst mem_reg[4][3] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 30980
load inst mem_reg[4][4] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 31130
load inst mem_reg[4][5] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 31280
load inst mem_reg[4][6] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 31430
load inst mem_reg[4][7] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 31580
load inst mem_reg[50][0] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 54230
load inst mem_reg[50][1] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 54380
load inst mem_reg[50][2] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 54530
load inst mem_reg[50][3] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 54680
load inst mem_reg[50][4] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 54830
load inst mem_reg[50][5] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 54980
load inst mem_reg[50][6] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 55130
load inst mem_reg[50][7] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 55280
load inst mem_reg[51][0] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 55430
load inst mem_reg[51][1] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 55580
load inst mem_reg[51][2] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 55730
load inst mem_reg[51][3] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 55880
load inst mem_reg[51][4] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 56030
load inst mem_reg[51][5] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 56180
load inst mem_reg[51][6] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 56330
load inst mem_reg[51][7] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 56480
load inst mem_reg[52][0] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 56630
load inst mem_reg[52][1] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 56780
load inst mem_reg[52][2] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 56930
load inst mem_reg[52][3] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 57080
load inst mem_reg[52][4] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 57230
load inst mem_reg[52][5] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 57380
load inst mem_reg[52][6] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 57530
load inst mem_reg[52][7] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 57680
load inst mem_reg[53][0] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 57830
load inst mem_reg[53][1] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 57980
load inst mem_reg[53][2] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 58130
load inst mem_reg[53][3] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 58280
load inst mem_reg[53][4] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 58430
load inst mem_reg[53][5] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 58580
load inst mem_reg[53][6] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 58730
load inst mem_reg[53][7] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 58880
load inst mem_reg[54][0] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 59030
load inst mem_reg[54][1] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 59180
load inst mem_reg[54][2] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 59330
load inst mem_reg[54][3] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 59480
load inst mem_reg[54][4] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 59630
load inst mem_reg[54][5] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 59780
load inst mem_reg[54][6] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 61130
load inst mem_reg[54][7] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 61280
load inst mem_reg[55][0] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 61430
load inst mem_reg[55][1] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 61580
load inst mem_reg[55][2] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 61730
load inst mem_reg[55][3] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 61880
load inst mem_reg[55][4] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 62030
load inst mem_reg[55][5] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 62180
load inst mem_reg[55][6] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 62330
load inst mem_reg[55][7] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 62480
load inst mem_reg[56][0] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 62630
load inst mem_reg[56][1] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 62780
load inst mem_reg[56][2] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 62930
load inst mem_reg[56][3] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 63080
load inst mem_reg[56][4] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 63230
load inst mem_reg[56][5] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 63380
load inst mem_reg[56][6] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 63530
load inst mem_reg[56][7] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 63680
load inst mem_reg[57][0] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 63830
load inst mem_reg[57][1] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 63980
load inst mem_reg[57][2] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 64130
load inst mem_reg[57][3] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 64280
load inst mem_reg[57][4] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 64430
load inst mem_reg[57][5] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 64580
load inst mem_reg[57][6] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 64730
load inst mem_reg[57][7] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 64880
load inst mem_reg[58][0] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 65030
load inst mem_reg[58][1] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 65180
load inst mem_reg[58][2] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 65330
load inst mem_reg[58][3] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 65480
load inst mem_reg[58][4] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 65630
load inst mem_reg[58][5] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 65780
load inst mem_reg[58][6] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 65930
load inst mem_reg[58][7] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 66080
load inst mem_reg[59][0] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 66230
load inst mem_reg[59][1] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 66380
load inst mem_reg[59][2] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 66530
load inst mem_reg[59][3] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 66680
load inst mem_reg[59][4] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 66830
load inst mem_reg[59][5] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 66980
load inst mem_reg[59][6] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 67130
load inst mem_reg[59][7] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 67280
load inst mem_reg[5][0] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 59930
load inst mem_reg[5][1] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 60080
load inst mem_reg[5][2] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 60230
load inst mem_reg[5][3] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 60380
load inst mem_reg[5][4] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 60530
load inst mem_reg[5][5] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 60680
load inst mem_reg[5][6] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 60830
load inst mem_reg[5][7] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 60980
load inst mem_reg[60][0] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 67430
load inst mem_reg[60][1] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 67580
load inst mem_reg[60][2] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 67730
load inst mem_reg[60][3] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 67880
load inst mem_reg[60][4] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 68030
load inst mem_reg[60][5] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 68180
load inst mem_reg[60][6] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 68330
load inst mem_reg[60][7] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 68480
load inst mem_reg[61][0] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 68630
load inst mem_reg[61][1] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 68780
load inst mem_reg[61][2] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 68930
load inst mem_reg[61][3] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 69080
load inst mem_reg[61][4] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 69230
load inst mem_reg[61][5] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 69380
load inst mem_reg[61][6] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 69530
load inst mem_reg[61][7] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 69680
load inst mem_reg[62][0] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 69830
load inst mem_reg[62][1] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 69980
load inst mem_reg[62][2] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 70130
load inst mem_reg[62][3] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 70280
load inst mem_reg[62][4] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 70430
load inst mem_reg[62][5] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 70580
load inst mem_reg[62][6] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 70730
load inst mem_reg[62][7] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 70880
load inst mem_reg[63][0] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 73730
load inst mem_reg[63][1] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 75080
load inst mem_reg[63][2] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 75230
load inst mem_reg[63][3] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 75680
load inst mem_reg[63][4] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 75830
load inst mem_reg[63][5] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 76280
load inst mem_reg[63][6] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 76580
load inst mem_reg[63][7] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 76880
load inst mem_reg[6][0] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 71030
load inst mem_reg[6][1] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 71180
load inst mem_reg[6][2] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 71330
load inst mem_reg[6][3] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 71480
load inst mem_reg[6][4] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 71630
load inst mem_reg[6][5] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 71780
load inst mem_reg[6][6] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 71930
load inst mem_reg[6][7] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 72080
load inst mem_reg[7][0] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 72230
load inst mem_reg[7][1] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 72380
load inst mem_reg[7][2] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 72530
load inst mem_reg[7][3] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 72680
load inst mem_reg[7][4] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 72830
load inst mem_reg[7][5] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 72980
load inst mem_reg[7][6] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 73130
load inst mem_reg[7][7] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 73280
load inst mem_reg[8][0] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 73430
load inst mem_reg[8][1] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 73880
load inst mem_reg[8][2] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 74030
load inst mem_reg[8][3] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 74180
load inst mem_reg[8][4] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 74330
load inst mem_reg[8][5] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 74480
load inst mem_reg[8][6] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 74630
load inst mem_reg[8][7] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 74780
load inst mem_reg[9][0] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 73580
load inst mem_reg[9][1] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 74930
load inst mem_reg[9][2] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 75380
load inst mem_reg[9][3] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 75530
load inst mem_reg[9][4] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 75980
load inst mem_reg[9][5] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 76130
load inst mem_reg[9][6] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 76430
load inst mem_reg[9][7] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 9 -x 3670 -y 76730
load inst one dff_0 work:dff_0:NOFILE -autohide -attr @cell(#1c1f28) dff_0 -pinBusAttr Q @name Q[5:0] -pinBusAttr q_reg[5]_0 @name q_reg[5]_0[5:0] -pg 1 -lvl 7 -x 1820 -y 43300
load inst rd_clk_IBUF_BUFG_inst BUFG hdi_primitives -attr @cell(#1c1f28) BUFG -pg 1 -lvl 3 -x 560 -y 43040
load inst rd_clk_IBUF_inst IBUF hdi_primitives -attr @cell(#1c1f28) IBUF -pg 1 -lvl 2 -x 230 -y 43040
load inst rd_en_IBUF_inst IBUF hdi_primitives -attr @cell(#1c1f28) IBUF -pg 1 -lvl 4 -x 920 -y 42980
load inst rd_reset_n_IBUF_inst IBUF hdi_primitives -attr @cell(#1c1f28) IBUF -pg 1 -lvl 3 -x 560 -y 43110
load inst rp[0]_i_1 LUT1 hdi_primitives -attr @cell(#1c1f28) LUT1 -pg 1 -lvl 5 -x 1270 -y 43170
load inst rp[1]_i_1 LUT2 hdi_primitives -attr @cell(#1c1f28) LUT2 -pg 1 -lvl 5 -x 1270 -y 43240
load inst rp[2]_i_1 LUT3 hdi_primitives -attr @cell(#1c1f28) LUT3 -pg 1 -lvl 5 -x 1270 -y 43390
load inst rp[3]_i_1 LUT4 hdi_primitives -attr @cell(#1c1f28) LUT4 -pg 1 -lvl 5 -x 1270 -y 43510
load inst rp[4]_i_1 LUT5 hdi_primitives -attr @cell(#1c1f28) LUT5 -pg 1 -lvl 5 -x 1270 -y 43680
load inst rp[5]_i_2 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 5 -x 1270 -y 43830
load inst rp_reg[0] FDCE hdi_primitives -attr @cell(#1c1f28) FDCE -pg 1 -lvl 6 -x 1590 -y 43080
load inst rp_reg[1] FDCE hdi_primitives -attr @cell(#1c1f28) FDCE -pg 1 -lvl 6 -x 1590 -y 43230
load inst rp_reg[2] FDCE hdi_primitives -attr @cell(#1c1f28) FDCE -pg 1 -lvl 6 -x 1590 -y 43390
load inst rp_reg[3] FDCE hdi_primitives -attr @cell(#1c1f28) FDCE -pg 1 -lvl 6 -x 1590 -y 43540
load inst rp_reg[4] FDCE hdi_primitives -attr @cell(#1c1f28) FDCE -pg 1 -lvl 6 -x 1590 -y 43700
load inst rp_reg[5] FDCE hdi_primitives -attr @cell(#1c1f28) FDCE -pg 1 -lvl 6 -x 1590 -y 43850
load inst three dff_1 work:dff_1:NOFILE -autohide -attr @cell(#1c1f28) dff_1 -pinBusAttr Q @name Q[5:0] -pinBusAttr q_reg[5]_0 @name q_reg[5]_0[5:0] -pg 1 -lvl 4 -x 920 -y 43060
load inst two dff_2 work:dff_2:NOFILE -autohide -attr @cell(#1c1f28) dff_2 -pinBusAttr D @name D[5:0] -pinBusAttr E @name E -pinBusAttr Q @name Q[5:0] -pinBusAttr wp_reg[0] @name wp_reg[0] -pinBusAttr wp_reg[0]_0 @name wp_reg[0]_0 -pinBusAttr wp_reg[0]_1 @name wp_reg[0]_1 -pinBusAttr wp_reg[0]_2 @name wp_reg[0]_2 -pinBusAttr wp_reg[0]_3 @name wp_reg[0]_3 -pinBusAttr wp_reg[0]_4 @name wp_reg[0]_4 -pinBusAttr wp_reg[1] @name wp_reg[1] -pinBusAttr wp_reg[1]_0 @name wp_reg[1]_0 -pinBusAttr wp_reg[1]_1 @name wp_reg[1]_1 -pinBusAttr wp_reg[1]_2 @name wp_reg[1]_2 -pinBusAttr wp_reg[1]_3 @name wp_reg[1]_3 -pinBusAttr wp_reg[1]_4 @name wp_reg[1]_4 -pinBusAttr wp_reg[1]_5 @name wp_reg[1]_5 -pinBusAttr wp_reg[1]_6 @name wp_reg[1]_6 -pinBusAttr wp_reg[2] @name wp_reg[2] -pinBusAttr wp_reg[2]_0 @name wp_reg[2]_0 -pinBusAttr wp_reg[2]_1 @name wp_reg[2]_1 -pinBusAttr wp_reg[2]_10 @name wp_reg[2]_10 -pinBusAttr wp_reg[2]_11 @name wp_reg[2]_11 -pinBusAttr wp_reg[2]_12 @name wp_reg[2]_12 -pinBusAttr wp_reg[2]_2 @name wp_reg[2]_2 -pinBusAttr wp_reg[2]_3 @name wp_reg[2]_3 -pinBusAttr wp_reg[2]_4 @name wp_reg[2]_4 -pinBusAttr wp_reg[2]_5 @name wp_reg[2]_5 -pinBusAttr wp_reg[2]_6 @name wp_reg[2]_6 -pinBusAttr wp_reg[2]_7 @name wp_reg[2]_7 -pinBusAttr wp_reg[2]_8 @name wp_reg[2]_8 -pinBusAttr wp_reg[2]_9 @name wp_reg[2]_9 -pinBusAttr wp_reg[3] @name wp_reg[3] -pinBusAttr wp_reg[3]_0 @name wp_reg[3]_0 -pinBusAttr wp_reg[3]_1 @name wp_reg[3]_1 -pinBusAttr wp_reg[3]_10 @name wp_reg[3]_10 -pinBusAttr wp_reg[3]_11 @name wp_reg[3]_11 -pinBusAttr wp_reg[3]_12 @name wp_reg[3]_12 -pinBusAttr wp_reg[3]_13 @name wp_reg[3]_13 -pinBusAttr wp_reg[3]_14 @name wp_reg[3]_14 -pinBusAttr wp_reg[3]_15 @name wp_reg[3]_15 -pinBusAttr wp_reg[3]_2 @name wp_reg[3]_2 -pinBusAttr wp_reg[3]_3 @name wp_reg[3]_3 -pinBusAttr wp_reg[3]_4 @name wp_reg[3]_4 -pinBusAttr wp_reg[3]_5 @name wp_reg[3]_5 -pinBusAttr wp_reg[3]_6 @name wp_reg[3]_6 -pinBusAttr wp_reg[3]_7 @name wp_reg[3]_7 -pinBusAttr wp_reg[3]_8 @name wp_reg[3]_8 -pinBusAttr wp_reg[3]_9 @name wp_reg[3]_9 -pinBusAttr wp_reg[4] @name wp_reg[4] -pinBusAttr wp_reg[4]_0 @name wp_reg[4]_0 -pinBusAttr wp_reg[4]_1 @name wp_reg[4]_1 -pinBusAttr wp_reg[4]_2 @name wp_reg[4]_2 -pinBusAttr wp_reg[4]_3 @name wp_reg[4]_3 -pinBusAttr wp_reg[4]_4 @name wp_reg[4]_4 -pinBusAttr wp_reg[4]_5 @name wp_reg[4]_5 -pinBusAttr wp_reg[5] @name wp_reg[5] -pinBusAttr wp_reg[5]_0 @name wp_reg[5]_0 -pinBusAttr wp_reg[5]_1 @name wp_reg[5]_1 -pinBusAttr wp_reg[5]_2 @name wp_reg[5]_2 -pinBusAttr wp_reg[5]_3 @name wp_reg[5]_3 -pinBusAttr wp_reg[5]_4 @name wp_reg[5]_4 -pinBusAttr wp_reg[5]_5 @name wp_reg[5]_5 -pinBusAttr wp_reg[5]_6 @name wp_reg[5]_6 -pinBusAttr wp_reg[5]_7 @name wp_reg[5]_7 -pinBusAttr wp_reg[5]_8 @name wp_reg[5]_8 -pinBusAttr wp_reg[5]_9 @name wp_reg[5]_9 -pg 1 -lvl 8 -x 2190 -y 42150
load inst wp[0]_i_1 LUT1 hdi_primitives -attr @cell(#1c1f28) LUT1 -pg 1 -lvl 2 -x 230 -y 42680
load inst wp[1]_i_1 LUT2 hdi_primitives -attr @cell(#1c1f28) LUT2 -pg 1 -lvl 2 -x 230 -y 42840
load inst wp[2]_i_1 LUT3 hdi_primitives -attr @cell(#1c1f28) LUT3 -pg 1 -lvl 2 -x 230 -y 43220
load inst wp[3]_i_1 LUT4 hdi_primitives -attr @cell(#1c1f28) LUT4 -pg 1 -lvl 2 -x 230 -y 43330
load inst wp[4]_i_1 LUT5 hdi_primitives -attr @cell(#1c1f28) LUT5 -pg 1 -lvl 2 -x 230 -y 43460
load inst wp[5]_i_2 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 2 -x 230 -y 43680
load inst wp_reg[0] FDCE hdi_primitives -attr @cell(#1c1f28) FDCE -pg 1 -lvl 3 -x 560 -y 42660
load inst wp_reg[1] FDCE hdi_primitives -attr @cell(#1c1f28) FDCE -pg 1 -lvl 3 -x 560 -y 42810
load inst wp_reg[2] FDCE hdi_primitives -attr @cell(#1c1f28) FDCE -pg 1 -lvl 3 -x 560 -y 43220
load inst wp_reg[3] FDCE hdi_primitives -attr @cell(#1c1f28) FDCE -pg 1 -lvl 3 -x 560 -y 43390
load inst wp_reg[4] FDCE hdi_primitives -attr @cell(#1c1f28) FDCE -pg 1 -lvl 3 -x 560 -y 43540
load inst wp_reg[5] FDCE hdi_primitives -attr @cell(#1c1f28) FDCE -pg 1 -lvl 3 -x 560 -y 43700
load inst wr_clk_IBUF_BUFG_inst BUFG hdi_primitives -attr @cell(#1c1f28) BUFG -pg 1 -lvl 2 -x 230 -y 43620
load inst wr_clk_IBUF_inst IBUF hdi_primitives -attr @cell(#1c1f28) IBUF -pg 1 -lvl 1 -x 40 -y 43620
load inst wr_en_IBUF_inst IBUF hdi_primitives -attr @cell(#1c1f28) IBUF -pg 1 -lvl 7 -x 1820 -y 42840
load inst wr_reset_n_IBUF_inst IBUF hdi_primitives -attr @cell(#1c1f28) IBUF -pg 1 -lvl 7 -x 1820 -y 42910
load net <const0> -ground -pin dout_reg[0] R -pin dout_reg[1] R -pin dout_reg[2] R -pin dout_reg[3] R -pin dout_reg[4] R -pin dout_reg[5] R -pin dout_reg[6] R -pin dout_reg[7] R -pin mem_reg[0][0] R -pin mem_reg[0][1] R -pin mem_reg[0][2] R -pin mem_reg[0][3] R -pin mem_reg[0][4] R -pin mem_reg[0][5] R -pin mem_reg[0][6] R -pin mem_reg[0][7] R -pin mem_reg[10][0] R -pin mem_reg[10][1] R -pin mem_reg[10][2] R -pin mem_reg[10][3] R -pin mem_reg[10][4] R -pin mem_reg[10][5] R -pin mem_reg[10][6] R -pin mem_reg[10][7] R -pin mem_reg[11][0] R -pin mem_reg[11][1] R -pin mem_reg[11][2] R -pin mem_reg[11][3] R -pin mem_reg[11][4] R -pin mem_reg[11][5] R -pin mem_reg[11][6] R -pin mem_reg[11][7] R -pin mem_reg[12][0] R -pin mem_reg[12][1] R -pin mem_reg[12][2] R -pin mem_reg[12][3] R -pin mem_reg[12][4] R -pin mem_reg[12][5] R -pin mem_reg[12][6] R -pin mem_reg[12][7] R -pin mem_reg[13][0] R -pin mem_reg[13][1] R -pin mem_reg[13][2] R -pin mem_reg[13][3] R -pin mem_reg[13][4] R -pin mem_reg[13][5] R -pin mem_reg[13][6] R -pin mem_reg[13][7] R -pin mem_reg[14][0] R -pin mem_reg[14][1] R -pin mem_reg[14][2] R -pin mem_reg[14][3] R -pin mem_reg[14][4] R -pin mem_reg[14][5] R -pin mem_reg[14][6] R -pin mem_reg[14][7] R -pin mem_reg[15][0] R -pin mem_reg[15][1] R -pin mem_reg[15][2] R -pin mem_reg[15][3] R -pin mem_reg[15][4] R -pin mem_reg[15][5] R -pin mem_reg[15][6] R -pin mem_reg[15][7] R -pin mem_reg[16][0] R -pin mem_reg[16][1] R -pin mem_reg[16][2] R -pin mem_reg[16][3] R -pin mem_reg[16][4] R -pin mem_reg[16][5] R -pin mem_reg[16][6] R -pin mem_reg[16][7] R -pin mem_reg[17][0] R -pin mem_reg[17][1] R -pin mem_reg[17][2] R -pin mem_reg[17][3] R -pin mem_reg[17][4] R -pin mem_reg[17][5] R -pin mem_reg[17][6] R -pin mem_reg[17][7] R -pin mem_reg[18][0] R -pin mem_reg[18][1] R -pin mem_reg[18][2] R -pin mem_reg[18][3] R -pin mem_reg[18][4] R -pin mem_reg[18][5] R -pin mem_reg[18][6] R -pin mem_reg[18][7] R -pin mem_reg[19][0] R -pin mem_reg[19][1] R -pin mem_reg[19][2] R -pin mem_reg[19][3] R -pin mem_reg[19][4] R -pin mem_reg[19][5] R -pin mem_reg[19][6] R -pin mem_reg[19][7] R -pin mem_reg[1][0] R -pin mem_reg[1][1] R -pin mem_reg[1][2] R -pin mem_reg[1][3] R -pin mem_reg[1][4] R -pin mem_reg[1][5] R -pin mem_reg[1][6] R -pin mem_reg[1][7] R -pin mem_reg[20][0] R -pin mem_reg[20][1] R -pin mem_reg[20][2] R -pin mem_reg[20][3] R -pin mem_reg[20][4] R -pin mem_reg[20][5] R -pin mem_reg[20][6] R -pin mem_reg[20][7] R -pin mem_reg[21][0] R -pin mem_reg[21][1] R -pin mem_reg[21][2] R -pin mem_reg[21][3] R -pin mem_reg[21][4] R -pin mem_reg[21][5] R -pin mem_reg[21][6] R -pin mem_reg[21][7] R -pin mem_reg[22][0] R -pin mem_reg[22][1] R -pin mem_reg[22][2] R -pin mem_reg[22][3] R -pin mem_reg[22][4] R -pin mem_reg[22][5] R -pin mem_reg[22][6] R -pin mem_reg[22][7] R -pin mem_reg[23][0] R -pin mem_reg[23][1] R -pin mem_reg[23][2] R -pin mem_reg[23][3] R -pin mem_reg[23][4] R -pin mem_reg[23][5] R -pin mem_reg[23][6] R -pin mem_reg[23][7] R -pin mem_reg[24][0] R -pin mem_reg[24][1] R -pin mem_reg[24][2] R -pin mem_reg[24][3] R -pin mem_reg[24][4] R -pin mem_reg[24][5] R -pin mem_reg[24][6] R -pin mem_reg[24][7] R -pin mem_reg[25][0] R -pin mem_reg[25][1] R -pin mem_reg[25][2] R -pin mem_reg[25][3] R -pin mem_reg[25][4] R -pin mem_reg[25][5] R -pin mem_reg[25][6] R -pin mem_reg[25][7] R -pin mem_reg[26][0] R -pin mem_reg[26][1] R -pin mem_reg[26][2] R -pin mem_reg[26][3] R -pin mem_reg[26][4] R -pin mem_reg[26][5] R -pin mem_reg[26][6] R -pin mem_reg[26][7] R -pin mem_reg[27][0] R -pin mem_reg[27][1] R -pin mem_reg[27][2] R -pin mem_reg[27][3] R -pin mem_reg[27][4] R -pin mem_reg[27][5] R -pin mem_reg[27][6] R -pin mem_reg[27][7] R -pin mem_reg[28][0] R -pin mem_reg[28][1] R -pin mem_reg[28][2] R -pin mem_reg[28][3] R -pin mem_reg[28][4] R -pin mem_reg[28][5] R -pin mem_reg[28][6] R -pin mem_reg[28][7] R -pin mem_reg[29][0] R -pin mem_reg[29][1] R -pin mem_reg[29][2] R -pin mem_reg[29][3] R -pin mem_reg[29][4] R -pin mem_reg[29][5] R -pin mem_reg[29][6] R -pin mem_reg[29][7] R -pin mem_reg[2][0] R -pin mem_reg[2][1] R -pin mem_reg[2][2] R -pin mem_reg[2][3] R -pin mem_reg[2][4] R -pin mem_reg[2][5] R -pin mem_reg[2][6] R -pin mem_reg[2][7] R -pin mem_reg[30][0] R -pin mem_reg[30][1] R -pin mem_reg[30][2] R -pin mem_reg[30][3] R -pin mem_reg[30][4] R -pin mem_reg[30][5] R -pin mem_reg[30][6] R -pin mem_reg[30][7] R -pin mem_reg[31][0] R -pin mem_reg[31][1] R -pin mem_reg[31][2] R -pin mem_reg[31][3] R -pin mem_reg[31][4] R -pin mem_reg[31][5] R -pin mem_reg[31][6] R -pin mem_reg[31][7] R -pin mem_reg[32][0] R -pin mem_reg[32][1] R -pin mem_reg[32][2] R -pin mem_reg[32][3] R -pin mem_reg[32][4] R -pin mem_reg[32][5] R -pin mem_reg[32][6] R -pin mem_reg[32][7] R -pin mem_reg[33][0] R -pin mem_reg[33][1] R -pin mem_reg[33][2] R -pin mem_reg[33][3] R -pin mem_reg[33][4] R -pin mem_reg[33][5] R -pin mem_reg[33][6] R -pin mem_reg[33][7] R -pin mem_reg[34][0] R -pin mem_reg[34][1] R -pin mem_reg[34][2] R -pin mem_reg[34][3] R -pin mem_reg[34][4] R -pin mem_reg[34][5] R -pin mem_reg[34][6] R -pin mem_reg[34][7] R -pin mem_reg[35][0] R -pin mem_reg[35][1] R -pin mem_reg[35][2] R -pin mem_reg[35][3] R -pin mem_reg[35][4] R -pin mem_reg[35][5] R -pin mem_reg[35][6] R -pin mem_reg[35][7] R -pin mem_reg[36][0] R -pin mem_reg[36][1] R -pin mem_reg[36][2] R -pin mem_reg[36][3] R -pin mem_reg[36][4] R -pin mem_reg[36][5] R -pin mem_reg[36][6] R -pin mem_reg[36][7] R -pin mem_reg[37][0] R -pin mem_reg[37][1] R -pin mem_reg[37][2] R -pin mem_reg[37][3] R -pin mem_reg[37][4] R -pin mem_reg[37][5] R -pin mem_reg[37][6] R -pin mem_reg[37][7] R -pin mem_reg[38][0] R -pin mem_reg[38][1] R -pin mem_reg[38][2] R -pin mem_reg[38][3] R -pin mem_reg[38][4] R -pin mem_reg[38][5] R -pin mem_reg[38][6] R -pin mem_reg[38][7] R -pin mem_reg[39][0] R -pin mem_reg[39][1] R -pin mem_reg[39][2] R -pin mem_reg[39][3] R -pin mem_reg[39][4] R -pin mem_reg[39][5] R -pin mem_reg[39][6] R -pin mem_reg[39][7] R -pin mem_reg[3][0] R -pin mem_reg[3][1] R -pin mem_reg[3][2] R -pin mem_reg[3][3] R -pin mem_reg[3][4] R -pin mem_reg[3][5] R -pin mem_reg[3][6] R -pin mem_reg[3][7] R -pin mem_reg[40][0] R -pin mem_reg[40][1] R -pin mem_reg[40][2] R -pin mem_reg[40][3] R -pin mem_reg[40][4] R -pin mem_reg[40][5] R -pin mem_reg[40][6] R -pin mem_reg[40][7] R -pin mem_reg[41][0] R -pin mem_reg[41][1] R -pin mem_reg[41][2] R -pin mem_reg[41][3] R -pin mem_reg[41][4] R -pin mem_reg[41][5] R -pin mem_reg[41][6] R -pin mem_reg[41][7] R -pin mem_reg[42][0] R -pin mem_reg[42][1] R -pin mem_reg[42][2] R -pin mem_reg[42][3] R -pin mem_reg[42][4] R -pin mem_reg[42][5] R -pin mem_reg[42][6] R -pin mem_reg[42][7] R -pin mem_reg[43][0] R -pin mem_reg[43][1] R -pin mem_reg[43][2] R -pin mem_reg[43][3] R -pin mem_reg[43][4] R -pin mem_reg[43][5] R -pin mem_reg[43][6] R -pin mem_reg[43][7] R -pin mem_reg[44][0] R -pin mem_reg[44][1] R -pin mem_reg[44][2] R -pin mem_reg[44][3] R -pin mem_reg[44][4] R -pin mem_reg[44][5] R -pin mem_reg[44][6] R -pin mem_reg[44][7] R -pin mem_reg[45][0] R -pin mem_reg[45][1] R -pin mem_reg[45][2] R -pin mem_reg[45][3] R -pin mem_reg[45][4] R -pin mem_reg[45][5] R -pin mem_reg[45][6] R -pin mem_reg[45][7] R -pin mem_reg[46][0] R -pin mem_reg[46][1] R -pin mem_reg[46][2] R -pin mem_reg[46][3] R -pin mem_reg[46][4] R -pin mem_reg[46][5] R -pin mem_reg[46][6] R -pin mem_reg[46][7] R -pin mem_reg[47][0] R -pin mem_reg[47][1] R -pin mem_reg[47][2] R -pin mem_reg[47][3] R -pin mem_reg[47][4] R -pin mem_reg[47][5] R -pin mem_reg[47][6] R -pin mem_reg[47][7] R -pin mem_reg[48][0] R -pin mem_reg[48][1] R -pin mem_reg[48][2] R -pin mem_reg[48][3] R -pin mem_reg[48][4] R -pin mem_reg[48][5] R -pin mem_reg[48][6] R -pin mem_reg[48][7] R -pin mem_reg[49][0] R -pin mem_reg[49][1] R -pin mem_reg[49][2] R -pin mem_reg[49][3] R -pin mem_reg[49][4] R -pin mem_reg[49][5] R -pin mem_reg[49][6] R -pin mem_reg[49][7] R -pin mem_reg[4][0] R -pin mem_reg[4][1] R -pin mem_reg[4][2] R -pin mem_reg[4][3] R -pin mem_reg[4][4] R -pin mem_reg[4][5] R -pin mem_reg[4][6] R -pin mem_reg[4][7] R -pin mem_reg[50][0] R -pin mem_reg[50][1] R -pin mem_reg[50][2] R -pin mem_reg[50][3] R -pin mem_reg[50][4] R -pin mem_reg[50][5] R -pin mem_reg[50][6] R -pin mem_reg[50][7] R -pin mem_reg[51][0] R -pin mem_reg[51][1] R -pin mem_reg[51][2] R -pin mem_reg[51][3] R -pin mem_reg[51][4] R -pin mem_reg[51][5] R -pin mem_reg[51][6] R -pin mem_reg[51][7] R -pin mem_reg[52][0] R -pin mem_reg[52][1] R -pin mem_reg[52][2] R -pin mem_reg[52][3] R -pin mem_reg[52][4] R -pin mem_reg[52][5] R -pin mem_reg[52][6] R -pin mem_reg[52][7] R -pin mem_reg[53][0] R -pin mem_reg[53][1] R -pin mem_reg[53][2] R -pin mem_reg[53][3] R -pin mem_reg[53][4] R -pin mem_reg[53][5] R -pin mem_reg[53][6] R -pin mem_reg[53][7] R -pin mem_reg[54][0] R -pin mem_reg[54][1] R -pin mem_reg[54][2] R -pin mem_reg[54][3] R -pin mem_reg[54][4] R -pin mem_reg[54][5] R -pin mem_reg[54][6] R -pin mem_reg[54][7] R -pin mem_reg[55][0] R -pin mem_reg[55][1] R -pin mem_reg[55][2] R -pin mem_reg[55][3] R -pin mem_reg[55][4] R -pin mem_reg[55][5] R -pin mem_reg[55][6] R -pin mem_reg[55][7] R -pin mem_reg[56][0] R -pin mem_reg[56][1] R -pin mem_reg[56][2] R -pin mem_reg[56][3] R -pin mem_reg[56][4] R -pin mem_reg[56][5] R -pin mem_reg[56][6] R -pin mem_reg[56][7] R -pin mem_reg[57][0] R -pin mem_reg[57][1] R -pin mem_reg[57][2] R -pin mem_reg[57][3] R -pin mem_reg[57][4] R -pin mem_reg[57][5] R -pin mem_reg[57][6] R -pin mem_reg[57][7] R -pin mem_reg[58][0] R -pin mem_reg[58][1] R -pin mem_reg[58][2] R -pin mem_reg[58][3] R -pin mem_reg[58][4] R -pin mem_reg[58][5] R -pin mem_reg[58][6] R -pin mem_reg[58][7] R -pin mem_reg[59][0] R -pin mem_reg[59][1] R -pin mem_reg[59][2] R -pin mem_reg[59][3] R -pin mem_reg[59][4] R -pin mem_reg[59][5] R -pin mem_reg[59][6] R -pin mem_reg[59][7] R -pin mem_reg[5][0] R -pin mem_reg[5][1] R -pin mem_reg[5][2] R -pin mem_reg[5][3] R -pin mem_reg[5][4] R -pin mem_reg[5][5] R -pin mem_reg[5][6] R -pin mem_reg[5][7] R -pin mem_reg[60][0] R -pin mem_reg[60][1] R -pin mem_reg[60][2] R -pin mem_reg[60][3] R -pin mem_reg[60][4] R -pin mem_reg[60][5] R -pin mem_reg[60][6] R -pin mem_reg[60][7] R -pin mem_reg[61][0] R -pin mem_reg[61][1] R -pin mem_reg[61][2] R -pin mem_reg[61][3] R -pin mem_reg[61][4] R -pin mem_reg[61][5] R -pin mem_reg[61][6] R -pin mem_reg[61][7] R -pin mem_reg[62][0] R -pin mem_reg[62][1] R -pin mem_reg[62][2] R -pin mem_reg[62][3] R -pin mem_reg[62][4] R -pin mem_reg[62][5] R -pin mem_reg[62][6] R -pin mem_reg[62][7] R -pin mem_reg[63][0] R -pin mem_reg[63][1] R -pin mem_reg[63][2] R -pin mem_reg[63][3] R -pin mem_reg[63][4] R -pin mem_reg[63][5] R -pin mem_reg[63][6] R -pin mem_reg[63][7] R -pin mem_reg[6][0] R -pin mem_reg[6][1] R -pin mem_reg[6][2] R -pin mem_reg[6][3] R -pin mem_reg[6][4] R -pin mem_reg[6][5] R -pin mem_reg[6][6] R -pin mem_reg[6][7] R -pin mem_reg[7][0] R -pin mem_reg[7][1] R -pin mem_reg[7][2] R -pin mem_reg[7][3] R -pin mem_reg[7][4] R -pin mem_reg[7][5] R -pin mem_reg[7][6] R -pin mem_reg[7][7] R -pin mem_reg[8][0] R -pin mem_reg[8][1] R -pin mem_reg[8][2] R -pin mem_reg[8][3] R -pin mem_reg[8][4] R -pin mem_reg[8][5] R -pin mem_reg[8][6] R -pin mem_reg[8][7] R -pin mem_reg[9][0] R -pin mem_reg[9][1] R -pin mem_reg[9][2] R -pin mem_reg[9][3] R -pin mem_reg[9][4] R -pin mem_reg[9][5] R -pin mem_reg[9][6] R -pin mem_reg[9][7] R
load net din[0] -attr @rip(#1c1f28) din[0] -port din[0] -pin din_IBUF[0]_inst I
load net din[1] -attr @rip(#1c1f28) din[1] -port din[1] -pin din_IBUF[1]_inst I
load net din[2] -attr @rip(#1c1f28) din[2] -port din[2] -pin din_IBUF[2]_inst I
load net din[3] -attr @rip(#1c1f28) din[3] -port din[3] -pin din_IBUF[3]_inst I
load net din[4] -attr @rip(#1c1f28) din[4] -port din[4] -pin din_IBUF[4]_inst I
load net din[5] -attr @rip(#1c1f28) din[5] -port din[5] -pin din_IBUF[5]_inst I
load net din[6] -attr @rip(#1c1f28) din[6] -port din[6] -pin din_IBUF[6]_inst I
load net din[7] -attr @rip(#1c1f28) din[7] -port din[7] -pin din_IBUF[7]_inst I
load net din_IBUF[0] -pin din_IBUF[0]_inst O -pin mem_reg[0][0] D -pin mem_reg[10][0] D -pin mem_reg[11][0] D -pin mem_reg[12][0] D -pin mem_reg[13][0] D -pin mem_reg[14][0] D -pin mem_reg[15][0] D -pin mem_reg[16][0] D -pin mem_reg[17][0] D -pin mem_reg[18][0] D -pin mem_reg[19][0] D -pin mem_reg[1][0] D -pin mem_reg[20][0] D -pin mem_reg[21][0] D -pin mem_reg[22][0] D -pin mem_reg[23][0] D -pin mem_reg[24][0] D -pin mem_reg[25][0] D -pin mem_reg[26][0] D -pin mem_reg[27][0] D -pin mem_reg[28][0] D -pin mem_reg[29][0] D -pin mem_reg[2][0] D -pin mem_reg[30][0] D -pin mem_reg[31][0] D -pin mem_reg[32][0] D -pin mem_reg[33][0] D -pin mem_reg[34][0] D -pin mem_reg[35][0] D -pin mem_reg[36][0] D -pin mem_reg[37][0] D -pin mem_reg[38][0] D -pin mem_reg[39][0] D -pin mem_reg[3][0] D -pin mem_reg[40][0] D -pin mem_reg[41][0] D -pin mem_reg[42][0] D -pin mem_reg[43][0] D -pin mem_reg[44][0] D -pin mem_reg[45][0] D -pin mem_reg[46][0] D -pin mem_reg[47][0] D -pin mem_reg[48][0] D -pin mem_reg[49][0] D -pin mem_reg[4][0] D -pin mem_reg[50][0] D -pin mem_reg[51][0] D -pin mem_reg[52][0] D -pin mem_reg[53][0] D -pin mem_reg[54][0] D -pin mem_reg[55][0] D -pin mem_reg[56][0] D -pin mem_reg[57][0] D -pin mem_reg[58][0] D -pin mem_reg[59][0] D -pin mem_reg[5][0] D -pin mem_reg[60][0] D -pin mem_reg[61][0] D -pin mem_reg[62][0] D -pin mem_reg[63][0] D -pin mem_reg[6][0] D -pin mem_reg[7][0] D -pin mem_reg[8][0] D -pin mem_reg[9][0] D
netloc din_IBUF[0] 1 8 1 2660 90n
load net din_IBUF[1] -pin din_IBUF[1]_inst O -pin mem_reg[0][1] D -pin mem_reg[10][1] D -pin mem_reg[11][1] D -pin mem_reg[12][1] D -pin mem_reg[13][1] D -pin mem_reg[14][1] D -pin mem_reg[15][1] D -pin mem_reg[16][1] D -pin mem_reg[17][1] D -pin mem_reg[18][1] D -pin mem_reg[19][1] D -pin mem_reg[1][1] D -pin mem_reg[20][1] D -pin mem_reg[21][1] D -pin mem_reg[22][1] D -pin mem_reg[23][1] D -pin mem_reg[24][1] D -pin mem_reg[25][1] D -pin mem_reg[26][1] D -pin mem_reg[27][1] D -pin mem_reg[28][1] D -pin mem_reg[29][1] D -pin mem_reg[2][1] D -pin mem_reg[30][1] D -pin mem_reg[31][1] D -pin mem_reg[32][1] D -pin mem_reg[33][1] D -pin mem_reg[34][1] D -pin mem_reg[35][1] D -pin mem_reg[36][1] D -pin mem_reg[37][1] D -pin mem_reg[38][1] D -pin mem_reg[39][1] D -pin mem_reg[3][1] D -pin mem_reg[40][1] D -pin mem_reg[41][1] D -pin mem_reg[42][1] D -pin mem_reg[43][1] D -pin mem_reg[44][1] D -pin mem_reg[45][1] D -pin mem_reg[46][1] D -pin mem_reg[47][1] D -pin mem_reg[48][1] D -pin mem_reg[49][1] D -pin mem_reg[4][1] D -pin mem_reg[50][1] D -pin mem_reg[51][1] D -pin mem_reg[52][1] D -pin mem_reg[53][1] D -pin mem_reg[54][1] D -pin mem_reg[55][1] D -pin mem_reg[56][1] D -pin mem_reg[57][1] D -pin mem_reg[58][1] D -pin mem_reg[59][1] D -pin mem_reg[5][1] D -pin mem_reg[60][1] D -pin mem_reg[61][1] D -pin mem_reg[62][1] D -pin mem_reg[63][1] D -pin mem_reg[6][1] D -pin mem_reg[7][1] D -pin mem_reg[8][1] D -pin mem_reg[9][1] D
netloc din_IBUF[1] 1 8 1 3120 390n
load net din_IBUF[2] -pin din_IBUF[2]_inst O -pin mem_reg[0][2] D -pin mem_reg[10][2] D -pin mem_reg[11][2] D -pin mem_reg[12][2] D -pin mem_reg[13][2] D -pin mem_reg[14][2] D -pin mem_reg[15][2] D -pin mem_reg[16][2] D -pin mem_reg[17][2] D -pin mem_reg[18][2] D -pin mem_reg[19][2] D -pin mem_reg[1][2] D -pin mem_reg[20][2] D -pin mem_reg[21][2] D -pin mem_reg[22][2] D -pin mem_reg[23][2] D -pin mem_reg[24][2] D -pin mem_reg[25][2] D -pin mem_reg[26][2] D -pin mem_reg[27][2] D -pin mem_reg[28][2] D -pin mem_reg[29][2] D -pin mem_reg[2][2] D -pin mem_reg[30][2] D -pin mem_reg[31][2] D -pin mem_reg[32][2] D -pin mem_reg[33][2] D -pin mem_reg[34][2] D -pin mem_reg[35][2] D -pin mem_reg[36][2] D -pin mem_reg[37][2] D -pin mem_reg[38][2] D -pin mem_reg[39][2] D -pin mem_reg[3][2] D -pin mem_reg[40][2] D -pin mem_reg[41][2] D -pin mem_reg[42][2] D -pin mem_reg[43][2] D -pin mem_reg[44][2] D -pin mem_reg[45][2] D -pin mem_reg[46][2] D -pin mem_reg[47][2] D -pin mem_reg[48][2] D -pin mem_reg[49][2] D -pin mem_reg[4][2] D -pin mem_reg[50][2] D -pin mem_reg[51][2] D -pin mem_reg[52][2] D -pin mem_reg[53][2] D -pin mem_reg[54][2] D -pin mem_reg[55][2] D -pin mem_reg[56][2] D -pin mem_reg[57][2] D -pin mem_reg[58][2] D -pin mem_reg[59][2] D -pin mem_reg[5][2] D -pin mem_reg[60][2] D -pin mem_reg[61][2] D -pin mem_reg[62][2] D -pin mem_reg[63][2] D -pin mem_reg[6][2] D -pin mem_reg[7][2] D -pin mem_reg[8][2] D -pin mem_reg[9][2] D
netloc din_IBUF[2] 1 8 1 3160 690n
load net din_IBUF[3] -pin din_IBUF[3]_inst O -pin mem_reg[0][3] D -pin mem_reg[10][3] D -pin mem_reg[11][3] D -pin mem_reg[12][3] D -pin mem_reg[13][3] D -pin mem_reg[14][3] D -pin mem_reg[15][3] D -pin mem_reg[16][3] D -pin mem_reg[17][3] D -pin mem_reg[18][3] D -pin mem_reg[19][3] D -pin mem_reg[1][3] D -pin mem_reg[20][3] D -pin mem_reg[21][3] D -pin mem_reg[22][3] D -pin mem_reg[23][3] D -pin mem_reg[24][3] D -pin mem_reg[25][3] D -pin mem_reg[26][3] D -pin mem_reg[27][3] D -pin mem_reg[28][3] D -pin mem_reg[29][3] D -pin mem_reg[2][3] D -pin mem_reg[30][3] D -pin mem_reg[31][3] D -pin mem_reg[32][3] D -pin mem_reg[33][3] D -pin mem_reg[34][3] D -pin mem_reg[35][3] D -pin mem_reg[36][3] D -pin mem_reg[37][3] D -pin mem_reg[38][3] D -pin mem_reg[39][3] D -pin mem_reg[3][3] D -pin mem_reg[40][3] D -pin mem_reg[41][3] D -pin mem_reg[42][3] D -pin mem_reg[43][3] D -pin mem_reg[44][3] D -pin mem_reg[45][3] D -pin mem_reg[46][3] D -pin mem_reg[47][3] D -pin mem_reg[48][3] D -pin mem_reg[49][3] D -pin mem_reg[4][3] D -pin mem_reg[50][3] D -pin mem_reg[51][3] D -pin mem_reg[52][3] D -pin mem_reg[53][3] D -pin mem_reg[54][3] D -pin mem_reg[55][3] D -pin mem_reg[56][3] D -pin mem_reg[57][3] D -pin mem_reg[58][3] D -pin mem_reg[59][3] D -pin mem_reg[5][3] D -pin mem_reg[60][3] D -pin mem_reg[61][3] D -pin mem_reg[62][3] D -pin mem_reg[63][3] D -pin mem_reg[6][3] D -pin mem_reg[7][3] D -pin mem_reg[8][3] D -pin mem_reg[9][3] D
netloc din_IBUF[3] 1 8 1 3180 990n
load net din_IBUF[4] -pin din_IBUF[4]_inst O -pin mem_reg[0][4] D -pin mem_reg[10][4] D -pin mem_reg[11][4] D -pin mem_reg[12][4] D -pin mem_reg[13][4] D -pin mem_reg[14][4] D -pin mem_reg[15][4] D -pin mem_reg[16][4] D -pin mem_reg[17][4] D -pin mem_reg[18][4] D -pin mem_reg[19][4] D -pin mem_reg[1][4] D -pin mem_reg[20][4] D -pin mem_reg[21][4] D -pin mem_reg[22][4] D -pin mem_reg[23][4] D -pin mem_reg[24][4] D -pin mem_reg[25][4] D -pin mem_reg[26][4] D -pin mem_reg[27][4] D -pin mem_reg[28][4] D -pin mem_reg[29][4] D -pin mem_reg[2][4] D -pin mem_reg[30][4] D -pin mem_reg[31][4] D -pin mem_reg[32][4] D -pin mem_reg[33][4] D -pin mem_reg[34][4] D -pin mem_reg[35][4] D -pin mem_reg[36][4] D -pin mem_reg[37][4] D -pin mem_reg[38][4] D -pin mem_reg[39][4] D -pin mem_reg[3][4] D -pin mem_reg[40][4] D -pin mem_reg[41][4] D -pin mem_reg[42][4] D -pin mem_reg[43][4] D -pin mem_reg[44][4] D -pin mem_reg[45][4] D -pin mem_reg[46][4] D -pin mem_reg[47][4] D -pin mem_reg[48][4] D -pin mem_reg[49][4] D -pin mem_reg[4][4] D -pin mem_reg[50][4] D -pin mem_reg[51][4] D -pin mem_reg[52][4] D -pin mem_reg[53][4] D -pin mem_reg[54][4] D -pin mem_reg[55][4] D -pin mem_reg[56][4] D -pin mem_reg[57][4] D -pin mem_reg[58][4] D -pin mem_reg[59][4] D -pin mem_reg[5][4] D -pin mem_reg[60][4] D -pin mem_reg[61][4] D -pin mem_reg[62][4] D -pin mem_reg[63][4] D -pin mem_reg[6][4] D -pin mem_reg[7][4] D -pin mem_reg[8][4] D -pin mem_reg[9][4] D
netloc din_IBUF[4] 1 8 1 3200 1290n
load net din_IBUF[5] -pin din_IBUF[5]_inst O -pin mem_reg[0][5] D -pin mem_reg[10][5] D -pin mem_reg[11][5] D -pin mem_reg[12][5] D -pin mem_reg[13][5] D -pin mem_reg[14][5] D -pin mem_reg[15][5] D -pin mem_reg[16][5] D -pin mem_reg[17][5] D -pin mem_reg[18][5] D -pin mem_reg[19][5] D -pin mem_reg[1][5] D -pin mem_reg[20][5] D -pin mem_reg[21][5] D -pin mem_reg[22][5] D -pin mem_reg[23][5] D -pin mem_reg[24][5] D -pin mem_reg[25][5] D -pin mem_reg[26][5] D -pin mem_reg[27][5] D -pin mem_reg[28][5] D -pin mem_reg[29][5] D -pin mem_reg[2][5] D -pin mem_reg[30][5] D -pin mem_reg[31][5] D -pin mem_reg[32][5] D -pin mem_reg[33][5] D -pin mem_reg[34][5] D -pin mem_reg[35][5] D -pin mem_reg[36][5] D -pin mem_reg[37][5] D -pin mem_reg[38][5] D -pin mem_reg[39][5] D -pin mem_reg[3][5] D -pin mem_reg[40][5] D -pin mem_reg[41][5] D -pin mem_reg[42][5] D -pin mem_reg[43][5] D -pin mem_reg[44][5] D -pin mem_reg[45][5] D -pin mem_reg[46][5] D -pin mem_reg[47][5] D -pin mem_reg[48][5] D -pin mem_reg[49][5] D -pin mem_reg[4][5] D -pin mem_reg[50][5] D -pin mem_reg[51][5] D -pin mem_reg[52][5] D -pin mem_reg[53][5] D -pin mem_reg[54][5] D -pin mem_reg[55][5] D -pin mem_reg[56][5] D -pin mem_reg[57][5] D -pin mem_reg[58][5] D -pin mem_reg[59][5] D -pin mem_reg[5][5] D -pin mem_reg[60][5] D -pin mem_reg[61][5] D -pin mem_reg[62][5] D -pin mem_reg[63][5] D -pin mem_reg[6][5] D -pin mem_reg[7][5] D -pin mem_reg[8][5] D -pin mem_reg[9][5] D
netloc din_IBUF[5] 1 8 1 3220 1590n
load net din_IBUF[6] -pin din_IBUF[6]_inst O -pin mem_reg[0][6] D -pin mem_reg[10][6] D -pin mem_reg[11][6] D -pin mem_reg[12][6] D -pin mem_reg[13][6] D -pin mem_reg[14][6] D -pin mem_reg[15][6] D -pin mem_reg[16][6] D -pin mem_reg[17][6] D -pin mem_reg[18][6] D -pin mem_reg[19][6] D -pin mem_reg[1][6] D -pin mem_reg[20][6] D -pin mem_reg[21][6] D -pin mem_reg[22][6] D -pin mem_reg[23][6] D -pin mem_reg[24][6] D -pin mem_reg[25][6] D -pin mem_reg[26][6] D -pin mem_reg[27][6] D -pin mem_reg[28][6] D -pin mem_reg[29][6] D -pin mem_reg[2][6] D -pin mem_reg[30][6] D -pin mem_reg[31][6] D -pin mem_reg[32][6] D -pin mem_reg[33][6] D -pin mem_reg[34][6] D -pin mem_reg[35][6] D -pin mem_reg[36][6] D -pin mem_reg[37][6] D -pin mem_reg[38][6] D -pin mem_reg[39][6] D -pin mem_reg[3][6] D -pin mem_reg[40][6] D -pin mem_reg[41][6] D -pin mem_reg[42][6] D -pin mem_reg[43][6] D -pin mem_reg[44][6] D -pin mem_reg[45][6] D -pin mem_reg[46][6] D -pin mem_reg[47][6] D -pin mem_reg[48][6] D -pin mem_reg[49][6] D -pin mem_reg[4][6] D -pin mem_reg[50][6] D -pin mem_reg[51][6] D -pin mem_reg[52][6] D -pin mem_reg[53][6] D -pin mem_reg[54][6] D -pin mem_reg[55][6] D -pin mem_reg[56][6] D -pin mem_reg[57][6] D -pin mem_reg[58][6] D -pin mem_reg[59][6] D -pin mem_reg[5][6] D -pin mem_reg[60][6] D -pin mem_reg[61][6] D -pin mem_reg[62][6] D -pin mem_reg[63][6] D -pin mem_reg[6][6] D -pin mem_reg[7][6] D -pin mem_reg[8][6] D -pin mem_reg[9][6] D
netloc din_IBUF[6] 1 8 1 3240 2640n
load net din_IBUF[7] -pin din_IBUF[7]_inst O -pin mem_reg[0][7] D -pin mem_reg[10][7] D -pin mem_reg[11][7] D -pin mem_reg[12][7] D -pin mem_reg[13][7] D -pin mem_reg[14][7] D -pin mem_reg[15][7] D -pin mem_reg[16][7] D -pin mem_reg[17][7] D -pin mem_reg[18][7] D -pin mem_reg[19][7] D -pin mem_reg[1][7] D -pin mem_reg[20][7] D -pin mem_reg[21][7] D -pin mem_reg[22][7] D -pin mem_reg[23][7] D -pin mem_reg[24][7] D -pin mem_reg[25][7] D -pin mem_reg[26][7] D -pin mem_reg[27][7] D -pin mem_reg[28][7] D -pin mem_reg[29][7] D -pin mem_reg[2][7] D -pin mem_reg[30][7] D -pin mem_reg[31][7] D -pin mem_reg[32][7] D -pin mem_reg[33][7] D -pin mem_reg[34][7] D -pin mem_reg[35][7] D -pin mem_reg[36][7] D -pin mem_reg[37][7] D -pin mem_reg[38][7] D -pin mem_reg[39][7] D -pin mem_reg[3][7] D -pin mem_reg[40][7] D -pin mem_reg[41][7] D -pin mem_reg[42][7] D -pin mem_reg[43][7] D -pin mem_reg[44][7] D -pin mem_reg[45][7] D -pin mem_reg[46][7] D -pin mem_reg[47][7] D -pin mem_reg[48][7] D -pin mem_reg[49][7] D -pin mem_reg[4][7] D -pin mem_reg[50][7] D -pin mem_reg[51][7] D -pin mem_reg[52][7] D -pin mem_reg[53][7] D -pin mem_reg[54][7] D -pin mem_reg[55][7] D -pin mem_reg[56][7] D -pin mem_reg[57][7] D -pin mem_reg[58][7] D -pin mem_reg[59][7] D -pin mem_reg[5][7] D -pin mem_reg[60][7] D -pin mem_reg[61][7] D -pin mem_reg[62][7] D -pin mem_reg[63][7] D -pin mem_reg[6][7] D -pin mem_reg[7][7] D -pin mem_reg[8][7] D -pin mem_reg[9][7] D
netloc din_IBUF[7] 1 8 1 3060 3840n
load net dout[0] -attr @rip(#1c1f28) 0 -port dout[0] -pin dout_OBUF[0]_inst O
load net dout[0]_i_14_n_0 -pin dout[0]_i_14 O -pin dout_reg[0]_i_6 I0
netloc dout[0]_i_14_n_0 1 10 1 11760 37490n
load net dout[0]_i_15_n_0 -pin dout[0]_i_15 O -pin dout_reg[0]_i_6 I1
netloc dout[0]_i_15_n_0 1 10 1 N 37660
load net dout[0]_i_16_n_0 -pin dout[0]_i_16 O -pin dout_reg[0]_i_7 I0
netloc dout[0]_i_16_n_0 1 10 1 11760 37830n
load net dout[0]_i_17_n_0 -pin dout[0]_i_17 O -pin dout_reg[0]_i_7 I1
netloc dout[0]_i_17_n_0 1 10 1 N 38000
load net dout[0]_i_18_n_0 -pin dout[0]_i_18 O -pin dout_reg[0]_i_8 I0
netloc dout[0]_i_18_n_0 1 10 1 11760 38170n
load net dout[0]_i_19_n_0 -pin dout[0]_i_19 O -pin dout_reg[0]_i_8 I1
netloc dout[0]_i_19_n_0 1 10 1 N 38340
load net dout[0]_i_1_n_0 -pin dout[0]_i_1 O -pin dout_reg[0] D
netloc dout[0]_i_1_n_0 1 13 1 12910 39000n
load net dout[0]_i_20_n_0 -pin dout[0]_i_20 O -pin dout_reg[0]_i_9 I0
netloc dout[0]_i_20_n_0 1 10 1 N 38510
load net dout[0]_i_21_n_0 -pin dout[0]_i_21 O -pin dout_reg[0]_i_9 I1
netloc dout[0]_i_21_n_0 1 10 1 11760 38530n
load net dout[0]_i_22_n_0 -pin dout[0]_i_22 O -pin dout_reg[0]_i_10 I0
netloc dout[0]_i_22_n_0 1 10 1 11760 38850n
load net dout[0]_i_23_n_0 -pin dout[0]_i_23 O -pin dout_reg[0]_i_10 I1
netloc dout[0]_i_23_n_0 1 10 1 N 39020
load net dout[0]_i_24_n_0 -pin dout[0]_i_24 O -pin dout_reg[0]_i_11 I0
netloc dout[0]_i_24_n_0 1 10 1 N 39190
load net dout[0]_i_25_n_0 -pin dout[0]_i_25 O -pin dout_reg[0]_i_11 I1
netloc dout[0]_i_25_n_0 1 10 1 11760 39210n
load net dout[0]_i_26_n_0 -pin dout[0]_i_26 O -pin dout_reg[0]_i_12 I0
netloc dout[0]_i_26_n_0 1 10 1 N 39530
load net dout[0]_i_27_n_0 -pin dout[0]_i_27 O -pin dout_reg[0]_i_12 I1
netloc dout[0]_i_27_n_0 1 10 1 11760 39550n
load net dout[0]_i_28_n_0 -pin dout[0]_i_28 O -pin dout_reg[0]_i_13 I0
netloc dout[0]_i_28_n_0 1 10 1 N 39870
load net dout[0]_i_29_n_0 -pin dout[0]_i_29 O -pin dout_reg[0]_i_13 I1
netloc dout[0]_i_29_n_0 1 10 1 11760 39890n
load net dout[1] -attr @rip(#1c1f28) 1 -port dout[1] -pin dout_OBUF[1]_inst O
load net dout[1]_i_14_n_0 -pin dout[1]_i_14 O -pin dout_reg[1]_i_6 I0
netloc dout[1]_i_14_n_0 1 10 1 11760 35440n
load net dout[1]_i_15_n_0 -pin dout[1]_i_15 O -pin dout_reg[1]_i_6 I1
netloc dout[1]_i_15_n_0 1 10 1 N 35610
load net dout[1]_i_16_n_0 -pin dout[1]_i_16 O -pin dout_reg[1]_i_7 I0
netloc dout[1]_i_16_n_0 1 10 1 N 35780
load net dout[1]_i_17_n_0 -pin dout[1]_i_17 O -pin dout_reg[1]_i_7 I1
netloc dout[1]_i_17_n_0 1 10 1 11760 35800n
load net dout[1]_i_18_n_0 -pin dout[1]_i_18 O -pin dout_reg[1]_i_8 I0
netloc dout[1]_i_18_n_0 1 10 1 11760 36120n
load net dout[1]_i_19_n_0 -pin dout[1]_i_19 O -pin dout_reg[1]_i_8 I1
netloc dout[1]_i_19_n_0 1 10 1 N 36290
load net dout[1]_i_1_n_0 -pin dout[1]_i_1 O -pin dout_reg[1] D
netloc dout[1]_i_1_n_0 1 13 1 12890 39170n
load net dout[1]_i_20_n_0 -pin dout[1]_i_20 O -pin dout_reg[1]_i_9 I0
netloc dout[1]_i_20_n_0 1 10 1 N 36460
load net dout[1]_i_21_n_0 -pin dout[1]_i_21 O -pin dout_reg[1]_i_9 I1
netloc dout[1]_i_21_n_0 1 10 1 11760 36480n
load net dout[1]_i_22_n_0 -pin dout[1]_i_22 O -pin dout_reg[1]_i_10 I0
netloc dout[1]_i_22_n_0 1 10 1 11760 36800n
load net dout[1]_i_23_n_0 -pin dout[1]_i_23 O -pin dout_reg[1]_i_10 I1
netloc dout[1]_i_23_n_0 1 10 1 N 36970
load net dout[1]_i_24_n_0 -pin dout[1]_i_24 O -pin dout_reg[1]_i_11 I0
netloc dout[1]_i_24_n_0 1 10 1 N 37140
load net dout[1]_i_25_n_0 -pin dout[1]_i_25 O -pin dout_reg[1]_i_11 I1
netloc dout[1]_i_25_n_0 1 10 1 11760 37160n
load net dout[1]_i_26_n_0 -pin dout[1]_i_26 O -pin dout_reg[1]_i_12 I0
netloc dout[1]_i_26_n_0 1 10 1 N 40210
load net dout[1]_i_27_n_0 -pin dout[1]_i_27 O -pin dout_reg[1]_i_12 I1
netloc dout[1]_i_27_n_0 1 10 1 11760 40230n
load net dout[1]_i_28_n_0 -pin dout[1]_i_28 O -pin dout_reg[1]_i_13 I0
netloc dout[1]_i_28_n_0 1 10 1 N 40550
load net dout[1]_i_29_n_0 -pin dout[1]_i_29 O -pin dout_reg[1]_i_13 I1
netloc dout[1]_i_29_n_0 1 10 1 11760 40570n
load net dout[2] -attr @rip(#1c1f28) 2 -port dout[2] -pin dout_OBUF[2]_inst O
load net dout[2]_i_14_n_0 -pin dout[2]_i_14 O -pin dout_reg[2]_i_6 I0
netloc dout[2]_i_14_n_0 1 10 1 N 40890
load net dout[2]_i_15_n_0 -pin dout[2]_i_15 O -pin dout_reg[2]_i_6 I1
netloc dout[2]_i_15_n_0 1 10 1 11760 40910n
load net dout[2]_i_16_n_0 -pin dout[2]_i_16 O -pin dout_reg[2]_i_7 I0
netloc dout[2]_i_16_n_0 1 10 1 11800 41080n
load net dout[2]_i_17_n_0 -pin dout[2]_i_17 O -pin dout_reg[2]_i_7 I1
netloc dout[2]_i_17_n_0 1 10 1 11820 41100n
load net dout[2]_i_18_n_0 -pin dout[2]_i_18 O -pin dout_reg[2]_i_8 I0
netloc dout[2]_i_18_n_0 1 10 1 N 41590
load net dout[2]_i_19_n_0 -pin dout[2]_i_19 O -pin dout_reg[2]_i_8 I1
netloc dout[2]_i_19_n_0 1 10 1 11820 41610n
load net dout[2]_i_1_n_0 -pin dout[2]_i_1 O -pin dout_reg[2] D
netloc dout[2]_i_1_n_0 1 13 1 12850 40380n
load net dout[2]_i_20_n_0 -pin dout[2]_i_20 O -pin dout_reg[2]_i_9 I0
netloc dout[2]_i_20_n_0 1 10 1 N 41930
load net dout[2]_i_21_n_0 -pin dout[2]_i_21 O -pin dout_reg[2]_i_9 I1
netloc dout[2]_i_21_n_0 1 10 1 11820 41950n
load net dout[2]_i_22_n_0 -pin dout[2]_i_22 O -pin dout_reg[2]_i_10 I0
netloc dout[2]_i_22_n_0 1 10 1 N 42270
load net dout[2]_i_23_n_0 -pin dout[2]_i_23 O -pin dout_reg[2]_i_10 I1
netloc dout[2]_i_23_n_0 1 10 1 11820 42290n
load net dout[2]_i_24_n_0 -pin dout[2]_i_24 O -pin dout_reg[2]_i_11 I0
netloc dout[2]_i_24_n_0 1 10 1 N 42610
load net dout[2]_i_25_n_0 -pin dout[2]_i_25 O -pin dout_reg[2]_i_11 I1
netloc dout[2]_i_25_n_0 1 10 1 11820 42630n
load net dout[2]_i_26_n_0 -pin dout[2]_i_26 O -pin dout_reg[2]_i_12 I0
netloc dout[2]_i_26_n_0 1 10 1 N 42950
load net dout[2]_i_27_n_0 -pin dout[2]_i_27 O -pin dout_reg[2]_i_12 I1
netloc dout[2]_i_27_n_0 1 10 1 11820 42970n
load net dout[2]_i_28_n_0 -pin dout[2]_i_28 O -pin dout_reg[2]_i_13 I0
netloc dout[2]_i_28_n_0 1 10 1 N 43290
load net dout[2]_i_29_n_0 -pin dout[2]_i_29 O -pin dout_reg[2]_i_13 I1
netloc dout[2]_i_29_n_0 1 10 1 11820 43310n
load net dout[3] -attr @rip(#1c1f28) 3 -port dout[3] -pin dout_OBUF[3]_inst O
load net dout[3]_i_14_n_0 -pin dout[3]_i_14 O -pin dout_reg[3]_i_6 I0
netloc dout[3]_i_14_n_0 1 10 1 11800 33400n
load net dout[3]_i_15_n_0 -pin dout[3]_i_15 O -pin dout_reg[3]_i_6 I1
netloc dout[3]_i_15_n_0 1 10 1 N 33570
load net dout[3]_i_16_n_0 -pin dout[3]_i_16 O -pin dout_reg[3]_i_7 I0
netloc dout[3]_i_16_n_0 1 10 1 N 33740
load net dout[3]_i_17_n_0 -pin dout[3]_i_17 O -pin dout_reg[3]_i_7 I1
netloc dout[3]_i_17_n_0 1 10 1 11760 33760n
load net dout[3]_i_18_n_0 -pin dout[3]_i_18 O -pin dout_reg[3]_i_8 I0
netloc dout[3]_i_18_n_0 1 10 1 11760 34080n
load net dout[3]_i_19_n_0 -pin dout[3]_i_19 O -pin dout_reg[3]_i_8 I1
netloc dout[3]_i_19_n_0 1 10 1 N 34250
load net dout[3]_i_1_n_0 -pin dout[3]_i_1 O -pin dout_reg[3] D
netloc dout[3]_i_1_n_0 1 13 1 N 40550
load net dout[3]_i_20_n_0 -pin dout[3]_i_20 O -pin dout_reg[3]_i_9 I0
netloc dout[3]_i_20_n_0 1 10 1 N 34420
load net dout[3]_i_21_n_0 -pin dout[3]_i_21 O -pin dout_reg[3]_i_9 I1
netloc dout[3]_i_21_n_0 1 10 1 11760 34440n
load net dout[3]_i_22_n_0 -pin dout[3]_i_22 O -pin dout_reg[3]_i_10 I0
netloc dout[3]_i_22_n_0 1 10 1 11760 34760n
load net dout[3]_i_23_n_0 -pin dout[3]_i_23 O -pin dout_reg[3]_i_10 I1
netloc dout[3]_i_23_n_0 1 10 1 N 34930
load net dout[3]_i_24_n_0 -pin dout[3]_i_24 O -pin dout_reg[3]_i_11 I0
netloc dout[3]_i_24_n_0 1 10 1 N 35100
load net dout[3]_i_25_n_0 -pin dout[3]_i_25 O -pin dout_reg[3]_i_11 I1
netloc dout[3]_i_25_n_0 1 10 1 11760 35120n
load net dout[3]_i_26_n_0 -pin dout[3]_i_26 O -pin dout_reg[3]_i_12 I0
netloc dout[3]_i_26_n_0 1 10 1 N 43630
load net dout[3]_i_27_n_0 -pin dout[3]_i_27 O -pin dout_reg[3]_i_12 I1
netloc dout[3]_i_27_n_0 1 10 1 11820 43650n
load net dout[3]_i_28_n_0 -pin dout[3]_i_28 O -pin dout_reg[3]_i_13 I0
netloc dout[3]_i_28_n_0 1 10 1 N 43970
load net dout[3]_i_29_n_0 -pin dout[3]_i_29 O -pin dout_reg[3]_i_13 I1
netloc dout[3]_i_29_n_0 1 10 1 11820 43990n
load net dout[4] -attr @rip(#1c1f28) 4 -port dout[4] -pin dout_OBUF[4]_inst O
load net dout[4]_i_14_n_0 -pin dout[4]_i_14 O -pin dout_reg[4]_i_6 I0
netloc dout[4]_i_14_n_0 1 10 1 11800 31360n
load net dout[4]_i_15_n_0 -pin dout[4]_i_15 O -pin dout_reg[4]_i_6 I1
netloc dout[4]_i_15_n_0 1 10 1 N 31530
load net dout[4]_i_16_n_0 -pin dout[4]_i_16 O -pin dout_reg[4]_i_7 I0
netloc dout[4]_i_16_n_0 1 10 1 N 31700
load net dout[4]_i_17_n_0 -pin dout[4]_i_17 O -pin dout_reg[4]_i_7 I1
netloc dout[4]_i_17_n_0 1 10 1 11760 31720n
load net dout[4]_i_18_n_0 -pin dout[4]_i_18 O -pin dout_reg[4]_i_8 I0
netloc dout[4]_i_18_n_0 1 10 1 11800 32040n
load net dout[4]_i_19_n_0 -pin dout[4]_i_19 O -pin dout_reg[4]_i_8 I1
netloc dout[4]_i_19_n_0 1 10 1 N 32210
load net dout[4]_i_1_n_0 -pin dout[4]_i_1 O -pin dout_reg[4] D
netloc dout[4]_i_1_n_0 1 13 1 12850 40720n
load net dout[4]_i_20_n_0 -pin dout[4]_i_20 O -pin dout_reg[4]_i_9 I0
netloc dout[4]_i_20_n_0 1 10 1 N 32380
load net dout[4]_i_21_n_0 -pin dout[4]_i_21 O -pin dout_reg[4]_i_9 I1
netloc dout[4]_i_21_n_0 1 10 1 11760 32400n
load net dout[4]_i_22_n_0 -pin dout[4]_i_22 O -pin dout_reg[4]_i_10 I0
netloc dout[4]_i_22_n_0 1 10 1 11800 32720n
load net dout[4]_i_23_n_0 -pin dout[4]_i_23 O -pin dout_reg[4]_i_10 I1
netloc dout[4]_i_23_n_0 1 10 1 N 32890
load net dout[4]_i_24_n_0 -pin dout[4]_i_24 O -pin dout_reg[4]_i_11 I0
netloc dout[4]_i_24_n_0 1 10 1 N 33060
load net dout[4]_i_25_n_0 -pin dout[4]_i_25 O -pin dout_reg[4]_i_11 I1
netloc dout[4]_i_25_n_0 1 10 1 11760 33080n
load net dout[4]_i_26_n_0 -pin dout[4]_i_26 O -pin dout_reg[4]_i_12 I0
netloc dout[4]_i_26_n_0 1 10 1 N 44310
load net dout[4]_i_27_n_0 -pin dout[4]_i_27 O -pin dout_reg[4]_i_12 I1
netloc dout[4]_i_27_n_0 1 10 1 11820 44330n
load net dout[4]_i_28_n_0 -pin dout[4]_i_28 O -pin dout_reg[4]_i_13 I0
netloc dout[4]_i_28_n_0 1 10 1 N 44650
load net dout[4]_i_29_n_0 -pin dout[4]_i_29 O -pin dout_reg[4]_i_13 I1
netloc dout[4]_i_29_n_0 1 10 1 11820 44670n
load net dout[5] -attr @rip(#1c1f28) 5 -port dout[5] -pin dout_OBUF[5]_inst O
load net dout[5]_i_14_n_0 -pin dout[5]_i_14 O -pin dout_reg[5]_i_6 I0
netloc dout[5]_i_14_n_0 1 10 1 11800 29320n
load net dout[5]_i_15_n_0 -pin dout[5]_i_15 O -pin dout_reg[5]_i_6 I1
netloc dout[5]_i_15_n_0 1 10 1 N 29490
load net dout[5]_i_16_n_0 -pin dout[5]_i_16 O -pin dout_reg[5]_i_7 I0
netloc dout[5]_i_16_n_0 1 10 1 N 29660
load net dout[5]_i_17_n_0 -pin dout[5]_i_17 O -pin dout_reg[5]_i_7 I1
netloc dout[5]_i_17_n_0 1 10 1 11760 29680n
load net dout[5]_i_18_n_0 -pin dout[5]_i_18 O -pin dout_reg[5]_i_8 I0
netloc dout[5]_i_18_n_0 1 10 1 11800 30000n
load net dout[5]_i_19_n_0 -pin dout[5]_i_19 O -pin dout_reg[5]_i_8 I1
netloc dout[5]_i_19_n_0 1 10 1 N 30170
load net dout[5]_i_1_n_0 -pin dout[5]_i_1 O -pin dout_reg[5] D
netloc dout[5]_i_1_n_0 1 13 1 12810 40890n
load net dout[5]_i_20_n_0 -pin dout[5]_i_20 O -pin dout_reg[5]_i_9 I0
netloc dout[5]_i_20_n_0 1 10 1 N 30340
load net dout[5]_i_21_n_0 -pin dout[5]_i_21 O -pin dout_reg[5]_i_9 I1
netloc dout[5]_i_21_n_0 1 10 1 11760 30360n
load net dout[5]_i_22_n_0 -pin dout[5]_i_22 O -pin dout_reg[5]_i_10 I0
netloc dout[5]_i_22_n_0 1 10 1 11800 30680n
load net dout[5]_i_23_n_0 -pin dout[5]_i_23 O -pin dout_reg[5]_i_10 I1
netloc dout[5]_i_23_n_0 1 10 1 N 30850
load net dout[5]_i_24_n_0 -pin dout[5]_i_24 O -pin dout_reg[5]_i_11 I0
netloc dout[5]_i_24_n_0 1 10 1 N 31020
load net dout[5]_i_25_n_0 -pin dout[5]_i_25 O -pin dout_reg[5]_i_11 I1
netloc dout[5]_i_25_n_0 1 10 1 11760 31040n
load net dout[5]_i_26_n_0 -pin dout[5]_i_26 O -pin dout_reg[5]_i_12 I0
netloc dout[5]_i_26_n_0 1 10 1 N 44990
load net dout[5]_i_27_n_0 -pin dout[5]_i_27 O -pin dout_reg[5]_i_12 I1
netloc dout[5]_i_27_n_0 1 10 1 11820 45010n
load net dout[5]_i_28_n_0 -pin dout[5]_i_28 O -pin dout_reg[5]_i_13 I0
netloc dout[5]_i_28_n_0 1 10 1 N 45330
load net dout[5]_i_29_n_0 -pin dout[5]_i_29 O -pin dout_reg[5]_i_13 I1
netloc dout[5]_i_29_n_0 1 10 1 11820 45350n
load net dout[6] -attr @rip(#1c1f28) 6 -port dout[6] -pin dout_OBUF[6]_inst O
load net dout[6]_i_14_n_0 -pin dout[6]_i_14 O -pin dout_reg[6]_i_6 I0
netloc dout[6]_i_14_n_0 1 10 1 11780 27280n
load net dout[6]_i_15_n_0 -pin dout[6]_i_15 O -pin dout_reg[6]_i_6 I1
netloc dout[6]_i_15_n_0 1 10 1 N 27450
load net dout[6]_i_16_n_0 -pin dout[6]_i_16 O -pin dout_reg[6]_i_7 I0
netloc dout[6]_i_16_n_0 1 10 1 11800 27620n
load net dout[6]_i_17_n_0 -pin dout[6]_i_17 O -pin dout_reg[6]_i_7 I1
netloc dout[6]_i_17_n_0 1 10 1 N 27790
load net dout[6]_i_18_n_0 -pin dout[6]_i_18 O -pin dout_reg[6]_i_8 I0
netloc dout[6]_i_18_n_0 1 10 1 11800 27960n
load net dout[6]_i_19_n_0 -pin dout[6]_i_19 O -pin dout_reg[6]_i_8 I1
netloc dout[6]_i_19_n_0 1 10 1 N 28130
load net dout[6]_i_1_n_0 -pin dout[6]_i_1 O -pin dout_reg[6] D
netloc dout[6]_i_1_n_0 1 13 1 12790 41140n
load net dout[6]_i_20_n_0 -pin dout[6]_i_20 O -pin dout_reg[6]_i_9 I0
netloc dout[6]_i_20_n_0 1 10 1 11800 28300n
load net dout[6]_i_21_n_0 -pin dout[6]_i_21 O -pin dout_reg[6]_i_9 I1
netloc dout[6]_i_21_n_0 1 10 1 N 28470
load net dout[6]_i_22_n_0 -pin dout[6]_i_22 O -pin dout_reg[6]_i_10 I0
netloc dout[6]_i_22_n_0 1 10 1 11800 28640n
load net dout[6]_i_23_n_0 -pin dout[6]_i_23 O -pin dout_reg[6]_i_10 I1
netloc dout[6]_i_23_n_0 1 10 1 N 28810
load net dout[6]_i_24_n_0 -pin dout[6]_i_24 O -pin dout_reg[6]_i_11 I0
netloc dout[6]_i_24_n_0 1 10 1 N 28980
load net dout[6]_i_25_n_0 -pin dout[6]_i_25 O -pin dout_reg[6]_i_11 I1
netloc dout[6]_i_25_n_0 1 10 1 11760 29000n
load net dout[6]_i_26_n_0 -pin dout[6]_i_26 O -pin dout_reg[6]_i_12 I0
netloc dout[6]_i_26_n_0 1 10 1 11760 45670n
load net dout[6]_i_27_n_0 -pin dout[6]_i_27 O -pin dout_reg[6]_i_12 I1
netloc dout[6]_i_27_n_0 1 10 1 N 45840
load net dout[6]_i_28_n_0 -pin dout[6]_i_28 O -pin dout_reg[6]_i_13 I0
netloc dout[6]_i_28_n_0 1 10 1 N 46010
load net dout[6]_i_29_n_0 -pin dout[6]_i_29 O -pin dout_reg[6]_i_13 I1
netloc dout[6]_i_29_n_0 1 10 1 11820 46030n
load net dout[7] -attr @rip(#1c1f28) 7 -port dout[7] -pin dout_OBUF[7]_inst O
load net dout[7]_i_15_n_0 -pin dout[7]_i_15 O -pin dout_reg[7]_i_7 I0
netloc dout[7]_i_15_n_0 1 10 1 11760 46360n
load net dout[7]_i_16_n_0 -pin dout[7]_i_16 O -pin dout_reg[7]_i_7 I1
netloc dout[7]_i_16_n_0 1 10 1 N 46540
load net dout[7]_i_17_n_0 -pin dout[7]_i_17 O -pin dout_reg[7]_i_8 I0
netloc dout[7]_i_17_n_0 1 10 1 N 46710
load net dout[7]_i_18_n_0 -pin dout[7]_i_18 O -pin dout_reg[7]_i_8 I1
netloc dout[7]_i_18_n_0 1 10 1 11820 46730n
load net dout[7]_i_19_n_0 -pin dout[7]_i_19 O -pin dout_reg[7]_i_9 I0
netloc dout[7]_i_19_n_0 1 10 1 11760 47050n
load net dout[7]_i_20_n_0 -pin dout[7]_i_20 O -pin dout_reg[7]_i_9 I1
netloc dout[7]_i_20_n_0 1 10 1 N 47220
load net dout[7]_i_21_n_0 -pin dout[7]_i_21 O -pin dout_reg[7]_i_10 I0
netloc dout[7]_i_21_n_0 1 10 1 N 47390
load net dout[7]_i_22_n_0 -pin dout[7]_i_22 O -pin dout_reg[7]_i_10 I1
netloc dout[7]_i_22_n_0 1 10 1 11820 47410n
load net dout[7]_i_23_n_0 -pin dout[7]_i_23 O -pin dout_reg[7]_i_11 I0
netloc dout[7]_i_23_n_0 1 10 1 N 47730
load net dout[7]_i_24_n_0 -pin dout[7]_i_24 O -pin dout_reg[7]_i_11 I1
netloc dout[7]_i_24_n_0 1 10 1 11820 47750n
load net dout[7]_i_25_n_0 -pin dout[7]_i_25 O -pin dout_reg[7]_i_12 I0
netloc dout[7]_i_25_n_0 1 10 1 N 48070
load net dout[7]_i_26_n_0 -pin dout[7]_i_26 O -pin dout_reg[7]_i_12 I1
netloc dout[7]_i_26_n_0 1 10 1 11820 48090n
load net dout[7]_i_27_n_0 -pin dout[7]_i_27 O -pin dout_reg[7]_i_13 I0
netloc dout[7]_i_27_n_0 1 10 1 N 48410
load net dout[7]_i_28_n_0 -pin dout[7]_i_28 O -pin dout_reg[7]_i_13 I1
netloc dout[7]_i_28_n_0 1 10 1 11820 48430n
load net dout[7]_i_29_n_0 -pin dout[7]_i_29 O -pin dout_reg[7]_i_14 I0
netloc dout[7]_i_29_n_0 1 10 1 N 48750
load net dout[7]_i_2_n_0 -pin dout[7]_i_2 O -pin dout_reg[7] D
netloc dout[7]_i_2_n_0 1 13 1 12890 46300n
load net dout[7]_i_30_n_0 -pin dout[7]_i_30 O -pin dout_reg[7]_i_14 I1
netloc dout[7]_i_30_n_0 1 10 1 11820 48770n
load net dout_OBUF[0] -pin dout_OBUF[0]_inst I -pin dout_reg[0] Q
netloc dout_OBUF[0] 1 14 1 N 40090
load net dout_OBUF[1] -pin dout_OBUF[1]_inst I -pin dout_reg[1] Q
netloc dout_OBUF[1] 1 14 1 N 40240
load net dout_OBUF[2] -pin dout_OBUF[2]_inst I -pin dout_reg[2] Q
netloc dout_OBUF[2] 1 14 1 N 40390
load net dout_OBUF[3] -pin dout_OBUF[3]_inst I -pin dout_reg[3] Q
netloc dout_OBUF[3] 1 14 1 N 40540
load net dout_OBUF[4] -pin dout_OBUF[4]_inst I -pin dout_reg[4] Q
netloc dout_OBUF[4] 1 14 1 N 41140
load net dout_OBUF[5] -pin dout_OBUF[5]_inst I -pin dout_reg[5] Q
netloc dout_OBUF[5] 1 14 1 N 41290
load net dout_OBUF[6] -pin dout_OBUF[6]_inst I -pin dout_reg[6] Q
netloc dout_OBUF[6] 1 14 1 N 41440
load net dout_OBUF[7] -pin dout_OBUF[7]_inst I -pin dout_reg[7] Q
netloc dout_OBUF[7] 1 14 1 N 46290
load net dout_reg[0]_i_10_n_0 -pin dout_reg[0]_i_10 O -pin dout_reg[0]_i_4 I0
netloc dout_reg[0]_i_10_n_0 1 11 1 N 39010
load net dout_reg[0]_i_11_n_0 -pin dout_reg[0]_i_11 O -pin dout_reg[0]_i_4 I1
netloc dout_reg[0]_i_11_n_0 1 11 1 12000 39030n
load net dout_reg[0]_i_12_n_0 -pin dout_reg[0]_i_12 O -pin dout_reg[0]_i_5 I0
netloc dout_reg[0]_i_12_n_0 1 11 1 N 39540
load net dout_reg[0]_i_13_n_0 -pin dout_reg[0]_i_13 O -pin dout_reg[0]_i_5 I1
netloc dout_reg[0]_i_13_n_0 1 11 1 12000 39560n
load net dout_reg[0]_i_2_n_0 -pin dout[0]_i_1 I0 -pin dout_reg[0]_i_2 O
netloc dout_reg[0]_i_2_n_0 1 12 1 12510 37980n
load net dout_reg[0]_i_3_n_0 -pin dout[0]_i_1 I1 -pin dout_reg[0]_i_3 O
netloc dout_reg[0]_i_3_n_0 1 12 1 12250 38510n
load net dout_reg[0]_i_4_n_0 -pin dout[0]_i_1 I3 -pin dout_reg[0]_i_4 O
netloc dout_reg[0]_i_4_n_0 1 12 1 N 39020
load net dout_reg[0]_i_5_n_0 -pin dout[0]_i_1 I5 -pin dout_reg[0]_i_5 O
netloc dout_reg[0]_i_5_n_0 1 12 1 12250 39060n
load net dout_reg[0]_i_6_n_0 -pin dout_reg[0]_i_2 I0 -pin dout_reg[0]_i_6 O
netloc dout_reg[0]_i_6_n_0 1 11 1 12000 37650n
load net dout_reg[0]_i_7_n_0 -pin dout_reg[0]_i_2 I1 -pin dout_reg[0]_i_7 O
netloc dout_reg[0]_i_7_n_0 1 11 1 N 37990
load net dout_reg[0]_i_8_n_0 -pin dout_reg[0]_i_3 I0 -pin dout_reg[0]_i_8 O
netloc dout_reg[0]_i_8_n_0 1 11 1 12000 38330n
load net dout_reg[0]_i_9_n_0 -pin dout_reg[0]_i_3 I1 -pin dout_reg[0]_i_9 O
netloc dout_reg[0]_i_9_n_0 1 11 1 N 38520
load net dout_reg[1]_i_10_n_0 -pin dout_reg[1]_i_10 O -pin dout_reg[1]_i_4 I0
netloc dout_reg[1]_i_10_n_0 1 11 1 12000 36960n
load net dout_reg[1]_i_11_n_0 -pin dout_reg[1]_i_11 O -pin dout_reg[1]_i_4 I1
netloc dout_reg[1]_i_11_n_0 1 11 1 N 37150
load net dout_reg[1]_i_12_n_0 -pin dout_reg[1]_i_12 O -pin dout_reg[1]_i_5 I0
netloc dout_reg[1]_i_12_n_0 1 11 1 N 40220
load net dout_reg[1]_i_13_n_0 -pin dout_reg[1]_i_13 O -pin dout_reg[1]_i_5 I1
netloc dout_reg[1]_i_13_n_0 1 11 1 12000 40240n
load net dout_reg[1]_i_2_n_0 -pin dout[1]_i_1 I0 -pin dout_reg[1]_i_2 O
netloc dout_reg[1]_i_2_n_0 1 12 1 12530 35780n
load net dout_reg[1]_i_3_n_0 -pin dout[1]_i_1 I1 -pin dout_reg[1]_i_3 O
netloc dout_reg[1]_i_3_n_0 1 12 1 12410 36460n
load net dout_reg[1]_i_4_n_0 -pin dout[1]_i_1 I3 -pin dout_reg[1]_i_4 O
netloc dout_reg[1]_i_4_n_0 1 12 1 12270 37140n
load net dout_reg[1]_i_5_n_0 -pin dout[1]_i_1 I5 -pin dout_reg[1]_i_5 O
netloc dout_reg[1]_i_5_n_0 1 12 1 12270 39230n
load net dout_reg[1]_i_6_n_0 -pin dout_reg[1]_i_2 I0 -pin dout_reg[1]_i_6 O
netloc dout_reg[1]_i_6_n_0 1 11 1 12000 35600n
load net dout_reg[1]_i_7_n_0 -pin dout_reg[1]_i_2 I1 -pin dout_reg[1]_i_7 O
netloc dout_reg[1]_i_7_n_0 1 11 1 N 35790
load net dout_reg[1]_i_8_n_0 -pin dout_reg[1]_i_3 I0 -pin dout_reg[1]_i_8 O
netloc dout_reg[1]_i_8_n_0 1 11 1 12000 36280n
load net dout_reg[1]_i_9_n_0 -pin dout_reg[1]_i_3 I1 -pin dout_reg[1]_i_9 O
netloc dout_reg[1]_i_9_n_0 1 11 1 N 36470
load net dout_reg[2]_i_10_n_0 -pin dout_reg[2]_i_10 O -pin dout_reg[2]_i_4 I0
netloc dout_reg[2]_i_10_n_0 1 11 1 N 42280
load net dout_reg[2]_i_11_n_0 -pin dout_reg[2]_i_11 O -pin dout_reg[2]_i_4 I1
netloc dout_reg[2]_i_11_n_0 1 11 1 12000 42300n
load net dout_reg[2]_i_12_n_0 -pin dout_reg[2]_i_12 O -pin dout_reg[2]_i_5 I0
netloc dout_reg[2]_i_12_n_0 1 11 1 N 42960
load net dout_reg[2]_i_13_n_0 -pin dout_reg[2]_i_13 O -pin dout_reg[2]_i_5 I1
netloc dout_reg[2]_i_13_n_0 1 11 1 12000 42980n
load net dout_reg[2]_i_2_n_0 -pin dout[2]_i_1 I0 -pin dout_reg[2]_i_2 O
netloc dout_reg[2]_i_2_n_0 1 12 1 12250 40340n
load net dout_reg[2]_i_3_n_0 -pin dout[2]_i_1 I1 -pin dout_reg[2]_i_3 O
netloc dout_reg[2]_i_3_n_0 1 12 1 12270 40360n
load net dout_reg[2]_i_4_n_0 -pin dout[2]_i_1 I3 -pin dout_reg[2]_i_4 O
netloc dout_reg[2]_i_4_n_0 1 12 1 12290 40400n
load net dout_reg[2]_i_5_n_0 -pin dout[2]_i_1 I5 -pin dout_reg[2]_i_5 O
netloc dout_reg[2]_i_5_n_0 1 12 1 12310 40440n
load net dout_reg[2]_i_6_n_0 -pin dout_reg[2]_i_2 I0 -pin dout_reg[2]_i_6 O
netloc dout_reg[2]_i_6_n_0 1 11 1 N 40900
load net dout_reg[2]_i_7_n_0 -pin dout_reg[2]_i_2 I1 -pin dout_reg[2]_i_7 O
netloc dout_reg[2]_i_7_n_0 1 11 1 12000 40920n
load net dout_reg[2]_i_8_n_0 -pin dout_reg[2]_i_3 I0 -pin dout_reg[2]_i_8 O
netloc dout_reg[2]_i_8_n_0 1 11 1 N 41600
load net dout_reg[2]_i_9_n_0 -pin dout_reg[2]_i_3 I1 -pin dout_reg[2]_i_9 O
netloc dout_reg[2]_i_9_n_0 1 11 1 12000 41620n
load net dout_reg[3]_i_10_n_0 -pin dout_reg[3]_i_10 O -pin dout_reg[3]_i_4 I0
netloc dout_reg[3]_i_10_n_0 1 11 1 12000 34920n
load net dout_reg[3]_i_11_n_0 -pin dout_reg[3]_i_11 O -pin dout_reg[3]_i_4 I1
netloc dout_reg[3]_i_11_n_0 1 11 1 N 35110
load net dout_reg[3]_i_12_n_0 -pin dout_reg[3]_i_12 O -pin dout_reg[3]_i_5 I0
netloc dout_reg[3]_i_12_n_0 1 11 1 N 43640
load net dout_reg[3]_i_13_n_0 -pin dout_reg[3]_i_13 O -pin dout_reg[3]_i_5 I1
netloc dout_reg[3]_i_13_n_0 1 11 1 12040 43660n
load net dout_reg[3]_i_2_n_0 -pin dout[3]_i_1 I0 -pin dout_reg[3]_i_2 O
netloc dout_reg[3]_i_2_n_0 1 12 1 12550 33740n
load net dout_reg[3]_i_3_n_0 -pin dout[3]_i_1 I1 -pin dout_reg[3]_i_3 O
netloc dout_reg[3]_i_3_n_0 1 12 1 12430 34420n
load net dout_reg[3]_i_4_n_0 -pin dout[3]_i_1 I3 -pin dout_reg[3]_i_4 O
netloc dout_reg[3]_i_4_n_0 1 12 1 12330 35100n
load net dout_reg[3]_i_5_n_0 -pin dout[3]_i_1 I5 -pin dout_reg[3]_i_5 O
netloc dout_reg[3]_i_5_n_0 1 12 1 12410 40610n
load net dout_reg[3]_i_6_n_0 -pin dout_reg[3]_i_2 I0 -pin dout_reg[3]_i_6 O
netloc dout_reg[3]_i_6_n_0 1 11 1 12000 33560n
load net dout_reg[3]_i_7_n_0 -pin dout_reg[3]_i_2 I1 -pin dout_reg[3]_i_7 O
netloc dout_reg[3]_i_7_n_0 1 11 1 N 33750
load net dout_reg[3]_i_8_n_0 -pin dout_reg[3]_i_3 I0 -pin dout_reg[3]_i_8 O
netloc dout_reg[3]_i_8_n_0 1 11 1 12000 34240n
load net dout_reg[3]_i_9_n_0 -pin dout_reg[3]_i_3 I1 -pin dout_reg[3]_i_9 O
netloc dout_reg[3]_i_9_n_0 1 11 1 N 34430
load net dout_reg[4]_i_10_n_0 -pin dout_reg[4]_i_10 O -pin dout_reg[4]_i_4 I0
netloc dout_reg[4]_i_10_n_0 1 11 1 12040 32880n
load net dout_reg[4]_i_11_n_0 -pin dout_reg[4]_i_11 O -pin dout_reg[4]_i_4 I1
netloc dout_reg[4]_i_11_n_0 1 11 1 N 33070
load net dout_reg[4]_i_12_n_0 -pin dout_reg[4]_i_12 O -pin dout_reg[4]_i_5 I0
netloc dout_reg[4]_i_12_n_0 1 11 1 N 44320
load net dout_reg[4]_i_13_n_0 -pin dout_reg[4]_i_13 O -pin dout_reg[4]_i_5 I1
netloc dout_reg[4]_i_13_n_0 1 11 1 12040 44340n
load net dout_reg[4]_i_2_n_0 -pin dout[4]_i_1 I0 -pin dout_reg[4]_i_2 O
netloc dout_reg[4]_i_2_n_0 1 12 1 12570 31700n
load net dout_reg[4]_i_3_n_0 -pin dout[4]_i_1 I1 -pin dout_reg[4]_i_3 O
netloc dout_reg[4]_i_3_n_0 1 12 1 12450 32380n
load net dout_reg[4]_i_4_n_0 -pin dout[4]_i_1 I3 -pin dout_reg[4]_i_4 O
netloc dout_reg[4]_i_4_n_0 1 12 1 12350 33060n
load net dout_reg[4]_i_5_n_0 -pin dout[4]_i_1 I5 -pin dout_reg[4]_i_5 O
netloc dout_reg[4]_i_5_n_0 1 12 1 12570 40780n
load net dout_reg[4]_i_6_n_0 -pin dout_reg[4]_i_2 I0 -pin dout_reg[4]_i_6 O
netloc dout_reg[4]_i_6_n_0 1 11 1 12040 31520n
load net dout_reg[4]_i_7_n_0 -pin dout_reg[4]_i_2 I1 -pin dout_reg[4]_i_7 O
netloc dout_reg[4]_i_7_n_0 1 11 1 N 31710
load net dout_reg[4]_i_8_n_0 -pin dout_reg[4]_i_3 I0 -pin dout_reg[4]_i_8 O
netloc dout_reg[4]_i_8_n_0 1 11 1 12040 32200n
load net dout_reg[4]_i_9_n_0 -pin dout_reg[4]_i_3 I1 -pin dout_reg[4]_i_9 O
netloc dout_reg[4]_i_9_n_0 1 11 1 N 32390
load net dout_reg[5]_i_10_n_0 -pin dout_reg[5]_i_10 O -pin dout_reg[5]_i_4 I0
netloc dout_reg[5]_i_10_n_0 1 11 1 12040 30840n
load net dout_reg[5]_i_11_n_0 -pin dout_reg[5]_i_11 O -pin dout_reg[5]_i_4 I1
netloc dout_reg[5]_i_11_n_0 1 11 1 N 31030
load net dout_reg[5]_i_12_n_0 -pin dout_reg[5]_i_12 O -pin dout_reg[5]_i_5 I0
netloc dout_reg[5]_i_12_n_0 1 11 1 N 45000
load net dout_reg[5]_i_13_n_0 -pin dout_reg[5]_i_13 O -pin dout_reg[5]_i_5 I1
netloc dout_reg[5]_i_13_n_0 1 11 1 12040 45020n
load net dout_reg[5]_i_2_n_0 -pin dout[5]_i_1 I0 -pin dout_reg[5]_i_2 O
netloc dout_reg[5]_i_2_n_0 1 12 1 12590 29660n
load net dout_reg[5]_i_3_n_0 -pin dout[5]_i_1 I1 -pin dout_reg[5]_i_3 O
netloc dout_reg[5]_i_3_n_0 1 12 1 12470 30340n
load net dout_reg[5]_i_4_n_0 -pin dout[5]_i_1 I3 -pin dout_reg[5]_i_4 O
netloc dout_reg[5]_i_4_n_0 1 12 1 12370 31020n
load net dout_reg[5]_i_5_n_0 -pin dout[5]_i_1 I5 -pin dout_reg[5]_i_5 O
netloc dout_reg[5]_i_5_n_0 1 12 1 12630 40950n
load net dout_reg[5]_i_6_n_0 -pin dout_reg[5]_i_2 I0 -pin dout_reg[5]_i_6 O
netloc dout_reg[5]_i_6_n_0 1 11 1 12040 29480n
load net dout_reg[5]_i_7_n_0 -pin dout_reg[5]_i_2 I1 -pin dout_reg[5]_i_7 O
netloc dout_reg[5]_i_7_n_0 1 11 1 N 29670
load net dout_reg[5]_i_8_n_0 -pin dout_reg[5]_i_3 I0 -pin dout_reg[5]_i_8 O
netloc dout_reg[5]_i_8_n_0 1 11 1 12040 30160n
load net dout_reg[5]_i_9_n_0 -pin dout_reg[5]_i_3 I1 -pin dout_reg[5]_i_9 O
netloc dout_reg[5]_i_9_n_0 1 11 1 N 30350
load net dout_reg[6]_i_10_n_0 -pin dout_reg[6]_i_10 O -pin dout_reg[6]_i_4 I0
netloc dout_reg[6]_i_10_n_0 1 11 1 12040 28800n
load net dout_reg[6]_i_11_n_0 -pin dout_reg[6]_i_11 O -pin dout_reg[6]_i_4 I1
netloc dout_reg[6]_i_11_n_0 1 11 1 N 28990
load net dout_reg[6]_i_12_n_0 -pin dout_reg[6]_i_12 O -pin dout_reg[6]_i_5 I0
netloc dout_reg[6]_i_12_n_0 1 11 1 N 45830
load net dout_reg[6]_i_13_n_0 -pin dout_reg[6]_i_13 O -pin dout_reg[6]_i_5 I1
netloc dout_reg[6]_i_13_n_0 1 11 1 12040 45850n
load net dout_reg[6]_i_2_n_0 -pin dout[6]_i_1 I0 -pin dout_reg[6]_i_2 O
netloc dout_reg[6]_i_2_n_0 1 12 1 12610 27770n
load net dout_reg[6]_i_3_n_0 -pin dout[6]_i_1 I1 -pin dout_reg[6]_i_3 O
netloc dout_reg[6]_i_3_n_0 1 12 1 12490 28450n
load net dout_reg[6]_i_4_n_0 -pin dout[6]_i_1 I3 -pin dout_reg[6]_i_4 O
netloc dout_reg[6]_i_4_n_0 1 12 1 12390 28980n
load net dout_reg[6]_i_5_n_0 -pin dout[6]_i_1 I5 -pin dout_reg[6]_i_5 O
netloc dout_reg[6]_i_5_n_0 1 12 1 12650 41200n
load net dout_reg[6]_i_6_n_0 -pin dout_reg[6]_i_2 I0 -pin dout_reg[6]_i_6 O
netloc dout_reg[6]_i_6_n_0 1 11 1 12040 27440n
load net dout_reg[6]_i_7_n_0 -pin dout_reg[6]_i_2 I1 -pin dout_reg[6]_i_7 O
netloc dout_reg[6]_i_7_n_0 1 11 1 N 27780
load net dout_reg[6]_i_8_n_0 -pin dout_reg[6]_i_3 I0 -pin dout_reg[6]_i_8 O
netloc dout_reg[6]_i_8_n_0 1 11 1 12040 28120n
load net dout_reg[6]_i_9_n_0 -pin dout_reg[6]_i_3 I1 -pin dout_reg[6]_i_9 O
netloc dout_reg[6]_i_9_n_0 1 11 1 N 28460
load net dout_reg[7]_i_10_n_0 -pin dout_reg[7]_i_10 O -pin dout_reg[7]_i_4 I1
netloc dout_reg[7]_i_10_n_0 1 11 1 12040 47230n
load net dout_reg[7]_i_11_n_0 -pin dout_reg[7]_i_11 O -pin dout_reg[7]_i_5 I0
netloc dout_reg[7]_i_11_n_0 1 11 1 N 47740
load net dout_reg[7]_i_12_n_0 -pin dout_reg[7]_i_12 O -pin dout_reg[7]_i_5 I1
netloc dout_reg[7]_i_12_n_0 1 11 1 12040 47760n
load net dout_reg[7]_i_13_n_0 -pin dout_reg[7]_i_13 O -pin dout_reg[7]_i_6 I0
netloc dout_reg[7]_i_13_n_0 1 11 1 N 48420
load net dout_reg[7]_i_14_n_0 -pin dout_reg[7]_i_14 O -pin dout_reg[7]_i_6 I1
netloc dout_reg[7]_i_14_n_0 1 11 1 12040 48440n
load net dout_reg[7]_i_3_n_0 -pin dout[7]_i_2 I0 -pin dout_reg[7]_i_3 O
netloc dout_reg[7]_i_3_n_0 1 12 1 12210 46710n
load net dout_reg[7]_i_4_n_0 -pin dout[7]_i_2 I1 -pin dout_reg[7]_i_4 O
netloc dout_reg[7]_i_4_n_0 1 12 1 N 47220
load net dout_reg[7]_i_5_n_0 -pin dout[7]_i_2 I3 -pin dout_reg[7]_i_5 O
netloc dout_reg[7]_i_5_n_0 1 12 1 12470 47260n
load net dout_reg[7]_i_6_n_0 -pin dout[7]_i_2 I5 -pin dout_reg[7]_i_6 O
netloc dout_reg[7]_i_6_n_0 1 12 1 12650 47300n
load net dout_reg[7]_i_7_n_0 -pin dout_reg[7]_i_3 I0 -pin dout_reg[7]_i_7 O
netloc dout_reg[7]_i_7_n_0 1 11 1 12000 46530n
load net dout_reg[7]_i_8_n_0 -pin dout_reg[7]_i_3 I1 -pin dout_reg[7]_i_8 O
netloc dout_reg[7]_i_8_n_0 1 11 1 N 46720
load net dout_reg[7]_i_9_n_0 -pin dout_reg[7]_i_4 I0 -pin dout_reg[7]_i_9 O
netloc dout_reg[7]_i_9_n_0 1 11 1 N 47210
load net empty -port empty -pin empty_OBUF_inst O
netloc empty 1 15 1 NJ 41060
load net empty_OBUF -pin empty_OBUF_inst I -pin four empty_OBUF
netloc empty_OBUF 1 5 10 1440J 43000 NJ 43000 2000J 43520 3400J 42360 7320J 41170 NJ 41170 NJ 41170 12210J 41060 NJ 41060 NJ
load net four_n_2 -attr @rip(#1c1f28) rp_reg[0][0] -pin dout_reg[0] CE -pin dout_reg[1] CE -pin dout_reg[2] CE -pin dout_reg[3] CE -pin dout_reg[4] CE -pin dout_reg[5] CE -pin dout_reg[6] CE -pin dout_reg[7] CE -pin four rp_reg[0][0]
netloc four_n_2 1 5 9 1440 46620 NJ 46620 NJ 46620 NJ 46620 8600J 46280 NJ 46280 NJ 46280 NJ 46280 12870
load net full -port full -pin full_OBUF_inst O
netloc full 1 15 1 NJ 40990
load net full_OBUF -pin full_OBUF_inst I -pin two full_OBUF
netloc full_OBUF 1 8 7 NJ 42180 7080J 40990 NJ 40990 NJ 40990 NJ 40990 NJ 40990 NJ
load net mem_reg[0][0] -pin dout[0]_i_26 I5 -pin mem_reg[0][0] Q
netloc mem_reg[0][0] 1 9 1 6260 39590n
load net mem_reg[0][1] -pin dout[1]_i_26 I5 -pin mem_reg[0][1] Q
netloc mem_reg[0][1] 1 9 1 6680 40270n
load net mem_reg[0][2] -pin dout[2]_i_26 I5 -pin mem_reg[0][2] Q
netloc mem_reg[0][2] 1 9 1 4520 42740n
load net mem_reg[0][3] -pin dout[3]_i_26 I5 -pin mem_reg[0][3] Q
netloc mem_reg[0][3] 1 9 1 4340 43190n
load net mem_reg[0][4] -pin dout[4]_i_26 I5 -pin mem_reg[0][4] Q
netloc mem_reg[0][4] 1 9 1 7960 44370n
load net mem_reg[0][5] -pin dout[5]_i_26 I5 -pin mem_reg[0][5] Q
netloc mem_reg[0][5] 1 9 1 3800 45050n
load net mem_reg[0][6] -pin dout[6]_i_26 I5 -pin mem_reg[0][6] Q
netloc mem_reg[0][6] 1 9 1 8520 45730n
load net mem_reg[0][7] -pin dout[7]_i_27 I5 -pin mem_reg[0][7] Q
netloc mem_reg[0][7] 1 9 1 3840 48230n
load net mem_reg[10][0] -pin dout[0]_i_28 I1 -pin mem_reg[10][0] Q
netloc mem_reg[10][0] 1 9 1 6420 39850n
load net mem_reg[10][1] -pin dout[1]_i_28 I1 -pin mem_reg[10][1] Q
netloc mem_reg[10][1] 1 9 1 6860 40530n
load net mem_reg[10][2] -pin dout[2]_i_28 I1 -pin mem_reg[10][2] Q
netloc mem_reg[10][2] 1 9 1 3820 43270n
load net mem_reg[10][3] -pin dout[3]_i_28 I1 -pin mem_reg[10][3] Q
netloc mem_reg[10][3] 1 9 1 3840 43950n
load net mem_reg[10][4] -pin dout[4]_i_28 I1 -pin mem_reg[10][4] Q
netloc mem_reg[10][4] 1 9 1 8360 44630n
load net mem_reg[10][5] -pin dout[5]_i_28 I1 -pin mem_reg[10][5] Q
netloc mem_reg[10][5] 1 9 1 8560 45310n
load net mem_reg[10][6] -pin dout[6]_i_28 I1 -pin mem_reg[10][6] Q
netloc mem_reg[10][6] 1 9 1 3860 45990n
load net mem_reg[10][7] -pin dout[7]_i_29 I1 -pin mem_reg[10][7] Q
netloc mem_reg[10][7] 1 9 1 3780 48380n
load net mem_reg[11][0] -pin dout[0]_i_28 I0 -pin mem_reg[11][0] Q
netloc mem_reg[11][0] 1 9 1 6400 39830n
load net mem_reg[11][1] -pin dout[1]_i_28 I0 -pin mem_reg[11][1] Q
netloc mem_reg[11][1] 1 9 1 6900 40510n
load net mem_reg[11][2] -pin dout[2]_i_28 I0 -pin mem_reg[11][2] Q
netloc mem_reg[11][2] 1 9 1 4400 43040n
load net mem_reg[11][3] -pin dout[3]_i_28 I0 -pin mem_reg[11][3] Q
netloc mem_reg[11][3] 1 9 1 3800 43930n
load net mem_reg[11][4] -pin dout[4]_i_28 I0 -pin mem_reg[11][4] Q
netloc mem_reg[11][4] 1 9 1 3800 44610n
load net mem_reg[11][5] -pin dout[5]_i_28 I0 -pin mem_reg[11][5] Q
netloc mem_reg[11][5] 1 9 1 N 45290
load net mem_reg[11][6] -pin dout[6]_i_28 I0 -pin mem_reg[11][6] Q
netloc mem_reg[11][6] 1 9 1 4060 45920n
load net mem_reg[11][7] -pin dout[7]_i_29 I0 -pin mem_reg[11][7] Q
netloc mem_reg[11][7] 1 9 1 3820 48080n
load net mem_reg[12][0] -pin dout[0]_i_29 I5 -pin mem_reg[12][0] Q
netloc mem_reg[12][0] 1 9 1 10680 230n
load net mem_reg[12][1] -pin dout[1]_i_29 I5 -pin mem_reg[12][1] Q
netloc mem_reg[12][1] 1 9 1 10520 380n
load net mem_reg[12][2] -pin dout[2]_i_29 I5 -pin mem_reg[12][2] Q
netloc mem_reg[12][2] 1 9 1 9720 830n
load net mem_reg[12][3] -pin dout[3]_i_29 I5 -pin mem_reg[12][3] Q
netloc mem_reg[12][3] 1 9 1 9480 980n
load net mem_reg[12][4] -pin dout[4]_i_29 I5 -pin mem_reg[12][4] Q
netloc mem_reg[12][4] 1 9 1 9200 1280n
load net mem_reg[12][5] -pin dout[5]_i_29 I5 -pin mem_reg[12][5] Q
netloc mem_reg[12][5] 1 9 1 8800 1730n
load net mem_reg[12][6] -pin dout[6]_i_29 I5 -pin mem_reg[12][6] Q
netloc mem_reg[12][6] 1 9 1 8420 2780n
load net mem_reg[12][7] -pin dout[7]_i_30 I5 -pin mem_reg[12][7] Q
netloc mem_reg[12][7] 1 9 1 7300 3980n
load net mem_reg[13][0] -pin dout[0]_i_29 I3 -pin mem_reg[13][0] Q
netloc mem_reg[13][0] 1 9 1 10460 1880n
load net mem_reg[13][1] -pin dout[1]_i_29 I3 -pin mem_reg[13][1] Q
netloc mem_reg[13][1] 1 9 1 10340 2030n
load net mem_reg[13][2] -pin dout[2]_i_29 I3 -pin mem_reg[13][2] Q
netloc mem_reg[13][2] 1 9 1 9520 2180n
load net mem_reg[13][3] -pin dout[3]_i_29 I3 -pin mem_reg[13][3] Q
netloc mem_reg[13][3] 1 9 1 9260 2330n
load net mem_reg[13][4] -pin dout[4]_i_29 I3 -pin mem_reg[13][4] Q
netloc mem_reg[13][4] 1 9 1 8940 2480n
load net mem_reg[13][5] -pin dout[5]_i_29 I3 -pin mem_reg[13][5] Q
netloc mem_reg[13][5] 1 9 1 8640 2930n
load net mem_reg[13][6] -pin dout[6]_i_29 I3 -pin mem_reg[13][6] Q
netloc mem_reg[13][6] 1 9 1 8240 4130n
load net mem_reg[13][7] -pin dout[7]_i_30 I3 -pin mem_reg[13][7] Q
netloc mem_reg[13][7] 1 9 1 7280 4280n
load net mem_reg[14][0] -pin dout[0]_i_29 I1 -pin mem_reg[14][0] Q
netloc mem_reg[14][0] 1 9 1 10320 3080n
load net mem_reg[14][1] -pin dout[1]_i_29 I1 -pin mem_reg[14][1] Q
netloc mem_reg[14][1] 1 9 1 10180 3230n
load net mem_reg[14][2] -pin dout[2]_i_29 I1 -pin mem_reg[14][2] Q
netloc mem_reg[14][2] 1 9 1 9340 3380n
load net mem_reg[14][3] -pin dout[3]_i_29 I1 -pin mem_reg[14][3] Q
netloc mem_reg[14][3] 1 9 1 8980 3530n
load net mem_reg[14][4] -pin dout[4]_i_29 I1 -pin mem_reg[14][4] Q
netloc mem_reg[14][4] 1 9 1 8700 3680n
load net mem_reg[14][5] -pin dout[5]_i_29 I1 -pin mem_reg[14][5] Q
netloc mem_reg[14][5] 1 9 1 8400 4430n
load net mem_reg[14][6] -pin dout[6]_i_29 I1 -pin mem_reg[14][6] Q
netloc mem_reg[14][6] 1 9 1 8140 4580n
load net mem_reg[14][7] -pin dout[7]_i_30 I1 -pin mem_reg[14][7] Q
netloc mem_reg[14][7] 1 9 1 7160 4730n
load net mem_reg[15][0] -pin dout[0]_i_29 I0 -pin mem_reg[15][0] Q
netloc mem_reg[15][0] 1 9 1 5760 31730n
load net mem_reg[15][1] -pin dout[1]_i_29 I0 -pin mem_reg[15][1] Q
netloc mem_reg[15][1] 1 9 1 5640 31880n
load net mem_reg[15][2] -pin dout[2]_i_29 I0 -pin mem_reg[15][2] Q
netloc mem_reg[15][2] 1 9 1 4940 32030n
load net mem_reg[15][3] -pin dout[3]_i_29 I0 -pin mem_reg[15][3] Q
netloc mem_reg[15][3] 1 9 1 4740 32180n
load net mem_reg[15][4] -pin dout[4]_i_29 I0 -pin mem_reg[15][4] Q
netloc mem_reg[15][4] 1 9 1 4600 32330n
load net mem_reg[15][5] -pin dout[5]_i_29 I0 -pin mem_reg[15][5] Q
netloc mem_reg[15][5] 1 9 1 4460 32480n
load net mem_reg[15][6] -pin dout[6]_i_29 I0 -pin mem_reg[15][6] Q
netloc mem_reg[15][6] 1 9 1 4380 32630n
load net mem_reg[15][7] -pin dout[7]_i_30 I0 -pin mem_reg[15][7] Q
netloc mem_reg[15][7] 1 9 1 4040 32780n
load net mem_reg[16][0] -pin dout[0]_i_22 I5 -pin mem_reg[16][0] Q
netloc mem_reg[16][0] 1 9 1 10360 4880n
load net mem_reg[16][1] -pin dout[1]_i_22 I5 -pin mem_reg[16][1] Q
netloc mem_reg[16][1] 1 9 1 11080 5030n
load net mem_reg[16][2] -pin dout[2]_i_22 I5 -pin mem_reg[16][2] Q
netloc mem_reg[16][2] 1 9 1 9580 5180n
load net mem_reg[16][3] -pin dout[3]_i_22 I5 -pin mem_reg[16][3] Q
netloc mem_reg[16][3] 1 9 1 11280 5330n
load net mem_reg[16][4] -pin dout[4]_i_22 I5 -pin mem_reg[16][4] Q
netloc mem_reg[16][4] 1 9 1 11460 5480n
load net mem_reg[16][5] -pin dout[5]_i_22 I5 -pin mem_reg[16][5] Q
netloc mem_reg[16][5] 1 9 1 11560 5630n
load net mem_reg[16][6] -pin dout[6]_i_22 I5 -pin mem_reg[16][6] Q
netloc mem_reg[16][6] 1 9 1 11620 5780n
load net mem_reg[16][7] -pin dout[7]_i_23 I5 -pin mem_reg[16][7] Q
netloc mem_reg[16][7] 1 9 1 7500 5930n
load net mem_reg[17][0] -pin dout[0]_i_22 I3 -pin mem_reg[17][0] Q
netloc mem_reg[17][0] 1 9 1 10240 6080n
load net mem_reg[17][1] -pin dout[1]_i_22 I3 -pin mem_reg[17][1] Q
netloc mem_reg[17][1] 1 9 1 10940 6230n
load net mem_reg[17][2] -pin dout[2]_i_22 I3 -pin mem_reg[17][2] Q
netloc mem_reg[17][2] 1 9 1 9400 6380n
load net mem_reg[17][3] -pin dout[3]_i_22 I3 -pin mem_reg[17][3] Q
netloc mem_reg[17][3] 1 9 1 11220 6530n
load net mem_reg[17][4] -pin dout[4]_i_22 I3 -pin mem_reg[17][4] Q
netloc mem_reg[17][4] 1 9 1 11400 6680n
load net mem_reg[17][5] -pin dout[5]_i_22 I3 -pin mem_reg[17][5] Q
netloc mem_reg[17][5] 1 9 1 11520 6830n
load net mem_reg[17][6] -pin dout[6]_i_22 I3 -pin mem_reg[17][6] Q
netloc mem_reg[17][6] 1 9 1 11600 6980n
load net mem_reg[17][7] -pin dout[7]_i_23 I3 -pin mem_reg[17][7] Q
netloc mem_reg[17][7] 1 9 1 7400 7130n
load net mem_reg[18][0] -pin dout[0]_i_22 I1 -pin mem_reg[18][0] Q
netloc mem_reg[18][0] 1 9 1 10100 7280n
load net mem_reg[18][1] -pin dout[1]_i_22 I1 -pin mem_reg[18][1] Q
netloc mem_reg[18][1] 1 9 1 10640 7430n
load net mem_reg[18][2] -pin dout[2]_i_22 I1 -pin mem_reg[18][2] Q
netloc mem_reg[18][2] 1 9 1 9160 7580n
load net mem_reg[18][3] -pin dout[3]_i_22 I1 -pin mem_reg[18][3] Q
netloc mem_reg[18][3] 1 9 1 11160 7730n
load net mem_reg[18][4] -pin dout[4]_i_22 I1 -pin mem_reg[18][4] Q
netloc mem_reg[18][4] 1 9 1 11340 7880n
load net mem_reg[18][5] -pin dout[5]_i_22 I1 -pin mem_reg[18][5] Q
netloc mem_reg[18][5] 1 9 1 11500 8030n
load net mem_reg[18][6] -pin dout[6]_i_22 I1 -pin mem_reg[18][6] Q
netloc mem_reg[18][6] 1 9 1 11580 8180n
load net mem_reg[18][7] -pin dout[7]_i_23 I1 -pin mem_reg[18][7] Q
netloc mem_reg[18][7] 1 9 1 7140 8330n
load net mem_reg[19][0] -pin dout[0]_i_22 I0 -pin mem_reg[19][0] Q
netloc mem_reg[19][0] 1 9 1 10000 8480n
load net mem_reg[19][1] -pin dout[1]_i_22 I0 -pin mem_reg[19][1] Q
netloc mem_reg[19][1] 1 9 1 10500 8630n
load net mem_reg[19][2] -pin dout[2]_i_22 I0 -pin mem_reg[19][2] Q
netloc mem_reg[19][2] 1 9 1 8900 8780n
load net mem_reg[19][3] -pin dout[3]_i_22 I0 -pin mem_reg[19][3] Q
netloc mem_reg[19][3] 1 9 1 11100 8930n
load net mem_reg[19][4] -pin dout[4]_i_22 I0 -pin mem_reg[19][4] Q
netloc mem_reg[19][4] 1 9 1 11300 9080n
load net mem_reg[19][5] -pin dout[5]_i_22 I0 -pin mem_reg[19][5] Q
netloc mem_reg[19][5] 1 9 1 11440 9230n
load net mem_reg[19][6] -pin dout[6]_i_22 I0 -pin mem_reg[19][6] Q
netloc mem_reg[19][6] 1 9 1 11540 9380n
load net mem_reg[19][7] -pin dout[7]_i_23 I0 -pin mem_reg[19][7] Q
netloc mem_reg[19][7] 1 9 1 6940 9530n
load net mem_reg[1][0] -pin dout[0]_i_26 I3 -pin mem_reg[1][0] Q
netloc mem_reg[1][0] 1 9 1 10980 80n
load net mem_reg[1][1] -pin dout[1]_i_26 I3 -pin mem_reg[1][1] Q
netloc mem_reg[1][1] 1 9 1 10620 530n
load net mem_reg[1][2] -pin dout[2]_i_26 I3 -pin mem_reg[1][2] Q
netloc mem_reg[1][2] 1 9 1 9920 680n
load net mem_reg[1][3] -pin dout[3]_i_26 I3 -pin mem_reg[1][3] Q
netloc mem_reg[1][3] 1 9 1 9660 1130n
load net mem_reg[1][4] -pin dout[4]_i_26 I3 -pin mem_reg[1][4] Q
netloc mem_reg[1][4] 1 9 1 9300 1430n
load net mem_reg[1][5] -pin dout[5]_i_26 I3 -pin mem_reg[1][5] Q
netloc mem_reg[1][5] 1 9 1 9020 1580n
load net mem_reg[1][6] -pin dout[6]_i_26 I3 -pin mem_reg[1][6] Q
netloc mem_reg[1][6] 1 9 1 8600 2630n
load net mem_reg[1][7] -pin dout[7]_i_27 I3 -pin mem_reg[1][7] Q
netloc mem_reg[1][7] 1 9 1 7460 3830n
load net mem_reg[20][0] -pin dout[0]_i_23 I5 -pin mem_reg[20][0] Q
netloc mem_reg[20][0] 1 9 1 3840 28430n
load net mem_reg[20][1] -pin dout[1]_i_23 I5 -pin mem_reg[20][1] Q
netloc mem_reg[20][1] 1 9 1 7060 28580n
load net mem_reg[20][2] -pin dout[2]_i_23 I5 -pin mem_reg[20][2] Q
netloc mem_reg[20][2] 1 9 1 5520 28730n
load net mem_reg[20][3] -pin dout[3]_i_23 I5 -pin mem_reg[20][3] Q
netloc mem_reg[20][3] 1 9 1 3820 28880n
load net mem_reg[20][4] -pin dout[4]_i_23 I5 -pin mem_reg[20][4] Q
netloc mem_reg[20][4] 1 9 1 4320 29030n
load net mem_reg[20][5] -pin dout[5]_i_23 I5 -pin mem_reg[20][5] Q
netloc mem_reg[20][5] 1 9 1 4920 29180n
load net mem_reg[20][6] -pin dout[6]_i_23 I5 -pin mem_reg[20][6] Q
netloc mem_reg[20][6] 1 9 1 3980 28870n
load net mem_reg[20][7] -pin dout[7]_i_24 I5 -pin mem_reg[20][7] Q
netloc mem_reg[20][7] 1 9 1 4180 32930n
load net mem_reg[21][0] -pin dout[0]_i_23 I3 -pin mem_reg[21][0] Q
netloc mem_reg[21][0] 1 9 1 9760 9680n
load net mem_reg[21][1] -pin dout[1]_i_23 I3 -pin mem_reg[21][1] Q
netloc mem_reg[21][1] 1 9 1 10220 9830n
load net mem_reg[21][2] -pin dout[2]_i_23 I3 -pin mem_reg[21][2] Q
netloc mem_reg[21][2] 1 9 1 8560 9980n
load net mem_reg[21][3] -pin dout[3]_i_23 I3 -pin mem_reg[21][3] Q
netloc mem_reg[21][3] 1 9 1 10720 10130n
load net mem_reg[21][4] -pin dout[4]_i_23 I3 -pin mem_reg[21][4] Q
netloc mem_reg[21][4] 1 9 1 11180 10280n
load net mem_reg[21][5] -pin dout[5]_i_23 I3 -pin mem_reg[21][5] Q
netloc mem_reg[21][5] 1 9 1 11380 10430n
load net mem_reg[21][6] -pin dout[6]_i_23 I3 -pin mem_reg[21][6] Q
netloc mem_reg[21][6] 1 9 1 11480 10580n
load net mem_reg[21][7] -pin dout[7]_i_24 I3 -pin mem_reg[21][7] Q
netloc mem_reg[21][7] 1 9 1 6560 10730n
load net mem_reg[22][0] -pin dout[0]_i_23 I1 -pin mem_reg[22][0] Q
netloc mem_reg[22][0] 1 9 1 6860 25730n
load net mem_reg[22][1] -pin dout[1]_i_23 I1 -pin mem_reg[22][1] Q
netloc mem_reg[22][1] 1 9 1 7620 25880n
load net mem_reg[22][2] -pin dout[2]_i_23 I1 -pin mem_reg[22][2] Q
netloc mem_reg[22][2] 1 9 1 5960 26030n
load net mem_reg[22][3] -pin dout[3]_i_23 I1 -pin mem_reg[22][3] Q
netloc mem_reg[22][3] 1 9 1 8160 26180n
load net mem_reg[22][4] -pin dout[4]_i_23 I1 -pin mem_reg[22][4] Q
netloc mem_reg[22][4] 1 9 1 8720 26330n
load net mem_reg[22][5] -pin dout[5]_i_23 I1 -pin mem_reg[22][5] Q
netloc mem_reg[22][5] 1 9 1 9420 26480n
load net mem_reg[22][6] -pin dout[6]_i_23 I1 -pin mem_reg[22][6] Q
netloc mem_reg[22][6] 1 9 1 9840 26630n
load net mem_reg[22][7] -pin dout[7]_i_24 I1 -pin mem_reg[22][7] Q
netloc mem_reg[22][7] 1 9 1 3920 45140n
load net mem_reg[23][0] -pin dout[0]_i_23 I0 -pin mem_reg[23][0] Q
netloc mem_reg[23][0] 1 9 1 5620 36530n
load net mem_reg[23][1] -pin dout[1]_i_23 I0 -pin mem_reg[23][1] Q
netloc mem_reg[23][1] 1 9 1 3800 36680n
load net mem_reg[23][2] -pin dout[2]_i_23 I0 -pin mem_reg[23][2] Q
netloc mem_reg[23][2] 1 9 1 4880 36830n
load net mem_reg[23][3] -pin dout[3]_i_23 I0 -pin mem_reg[23][3] Q
netloc mem_reg[23][3] 1 9 1 5000 34890n
load net mem_reg[23][4] -pin dout[4]_i_23 I0 -pin mem_reg[23][4] Q
netloc mem_reg[23][4] 1 9 1 4580 32850n
load net mem_reg[23][5] -pin dout[5]_i_23 I0 -pin mem_reg[23][5] Q
netloc mem_reg[23][5] 1 9 1 4280 30810n
load net mem_reg[23][6] -pin dout[6]_i_23 I0 -pin mem_reg[23][6] Q
netloc mem_reg[23][6] 1 9 1 4080 28770n
load net mem_reg[23][7] -pin dout[7]_i_24 I0 -pin mem_reg[23][7] Q
netloc mem_reg[23][7] 1 9 1 3900 46070n
load net mem_reg[24][0] -pin dout[0]_i_24 I5 -pin mem_reg[24][0] Q
netloc mem_reg[24][0] 1 9 1 9460 10880n
load net mem_reg[24][1] -pin dout[1]_i_24 I5 -pin mem_reg[24][1] Q
netloc mem_reg[24][1] 1 9 1 9980 11030n
load net mem_reg[24][2] -pin dout[2]_i_24 I5 -pin mem_reg[24][2] Q
netloc mem_reg[24][2] 1 9 1 8200 11180n
load net mem_reg[24][3] -pin dout[3]_i_24 I5 -pin mem_reg[24][3] Q
netloc mem_reg[24][3] 1 9 1 10420 11330n
load net mem_reg[24][4] -pin dout[4]_i_24 I5 -pin mem_reg[24][4] Q
netloc mem_reg[24][4] 1 9 1 11060 11480n
load net mem_reg[24][5] -pin dout[5]_i_24 I5 -pin mem_reg[24][5] Q
netloc mem_reg[24][5] 1 9 1 11260 11630n
load net mem_reg[24][6] -pin dout[6]_i_24 I5 -pin mem_reg[24][6] Q
netloc mem_reg[24][6] 1 9 1 11420 11780n
load net mem_reg[24][7] -pin dout[7]_i_25 I5 -pin mem_reg[24][7] Q
netloc mem_reg[24][7] 1 9 1 6340 11930n
load net mem_reg[25][0] -pin dout[0]_i_24 I3 -pin mem_reg[25][0] Q
netloc mem_reg[25][0] 1 9 1 9240 12080n
load net mem_reg[25][1] -pin dout[1]_i_24 I3 -pin mem_reg[25][1] Q
netloc mem_reg[25][1] 1 9 1 9860 12230n
load net mem_reg[25][2] -pin dout[2]_i_24 I3 -pin mem_reg[25][2] Q
netloc mem_reg[25][2] 1 9 1 7980 12380n
load net mem_reg[25][3] -pin dout[3]_i_24 I3 -pin mem_reg[25][3] Q
netloc mem_reg[25][3] 1 9 1 10300 12530n
load net mem_reg[25][4] -pin dout[4]_i_24 I3 -pin mem_reg[25][4] Q
netloc mem_reg[25][4] 1 9 1 10860 12680n
load net mem_reg[25][5] -pin dout[5]_i_24 I3 -pin mem_reg[25][5] Q
netloc mem_reg[25][5] 1 9 1 11200 12830n
load net mem_reg[25][6] -pin dout[6]_i_24 I3 -pin mem_reg[25][6] Q
netloc mem_reg[25][6] 1 9 1 11360 12980n
load net mem_reg[25][7] -pin dout[7]_i_25 I3 -pin mem_reg[25][7] Q
netloc mem_reg[25][7] 1 9 1 6160 13130n
load net mem_reg[26][0] -pin dout[0]_i_24 I1 -pin mem_reg[26][0] Q
netloc mem_reg[26][0] 1 9 1 8960 13280n
load net mem_reg[26][1] -pin dout[1]_i_24 I1 -pin mem_reg[26][1] Q
netloc mem_reg[26][1] 1 9 1 9700 13430n
load net mem_reg[26][2] -pin dout[2]_i_24 I1 -pin mem_reg[26][2] Q
netloc mem_reg[26][2] 1 9 1 7800 13580n
load net mem_reg[26][3] -pin dout[3]_i_24 I1 -pin mem_reg[26][3] Q
netloc mem_reg[26][3] 1 9 1 10160 13730n
load net mem_reg[26][4] -pin dout[4]_i_24 I1 -pin mem_reg[26][4] Q
netloc mem_reg[26][4] 1 9 1 10600 13880n
load net mem_reg[26][5] -pin dout[5]_i_24 I1 -pin mem_reg[26][5] Q
netloc mem_reg[26][5] 1 9 1 11140 14030n
load net mem_reg[26][6] -pin dout[6]_i_24 I1 -pin mem_reg[26][6] Q
netloc mem_reg[26][6] 1 9 1 11320 14180n
load net mem_reg[26][7] -pin dout[7]_i_25 I1 -pin mem_reg[26][7] Q
netloc mem_reg[26][7] 1 9 1 6020 14330n
load net mem_reg[27][0] -pin dout[0]_i_24 I0 -pin mem_reg[27][0] Q
netloc mem_reg[27][0] 1 9 1 8740 14480n
load net mem_reg[27][1] -pin dout[1]_i_24 I0 -pin mem_reg[27][1] Q
netloc mem_reg[27][1] 1 9 1 9540 14630n
load net mem_reg[27][2] -pin dout[2]_i_24 I0 -pin mem_reg[27][2] Q
netloc mem_reg[27][2] 1 9 1 7680 14780n
load net mem_reg[27][3] -pin dout[3]_i_24 I0 -pin mem_reg[27][3] Q
netloc mem_reg[27][3] 1 9 1 10040 14930n
load net mem_reg[27][4] -pin dout[4]_i_24 I0 -pin mem_reg[27][4] Q
netloc mem_reg[27][4] 1 9 1 10440 15080n
load net mem_reg[27][5] -pin dout[5]_i_24 I0 -pin mem_reg[27][5] Q
netloc mem_reg[27][5] 1 9 1 11040 15230n
load net mem_reg[27][6] -pin dout[6]_i_24 I0 -pin mem_reg[27][6] Q
netloc mem_reg[27][6] 1 9 1 11240 15380n
load net mem_reg[27][7] -pin dout[7]_i_25 I0 -pin mem_reg[27][7] Q
netloc mem_reg[27][7] 1 9 1 5860 15530n
load net mem_reg[28][0] -pin dout[0]_i_25 I5 -pin mem_reg[28][0] Q
netloc mem_reg[28][0] 1 9 1 8320 15680n
load net mem_reg[28][1] -pin dout[1]_i_25 I5 -pin mem_reg[28][1] Q
netloc mem_reg[28][1] 1 9 1 9080 15830n
load net mem_reg[28][2] -pin dout[2]_i_25 I5 -pin mem_reg[28][2] Q
netloc mem_reg[28][2] 1 9 1 7340 15980n
load net mem_reg[28][3] -pin dout[3]_i_25 I5 -pin mem_reg[28][3] Q
netloc mem_reg[28][3] 1 9 1 9780 16130n
load net mem_reg[28][4] -pin dout[4]_i_25 I5 -pin mem_reg[28][4] Q
netloc mem_reg[28][4] 1 9 1 10140 16280n
load net mem_reg[28][5] -pin dout[5]_i_25 I5 -pin mem_reg[28][5] Q
netloc mem_reg[28][5] 1 9 1 10580 16430n
load net mem_reg[28][6] -pin dout[6]_i_25 I5 -pin mem_reg[28][6] Q
netloc mem_reg[28][6] 1 9 1 11120 16580n
load net mem_reg[28][7] -pin dout[7]_i_26 I5 -pin mem_reg[28][7] Q
netloc mem_reg[28][7] 1 9 1 5540 16730n
load net mem_reg[29][0] -pin dout[0]_i_25 I3 -pin mem_reg[29][0] Q
netloc mem_reg[29][0] 1 9 1 8180 16880n
load net mem_reg[29][1] -pin dout[1]_i_25 I3 -pin mem_reg[29][1] Q
netloc mem_reg[29][1] 1 9 1 8860 17030n
load net mem_reg[29][2] -pin dout[2]_i_25 I3 -pin mem_reg[29][2] Q
netloc mem_reg[29][2] 1 9 1 7100 17180n
load net mem_reg[29][3] -pin dout[3]_i_25 I3 -pin mem_reg[29][3] Q
netloc mem_reg[29][3] 1 9 1 9640 17330n
load net mem_reg[29][4] -pin dout[4]_i_25 I3 -pin mem_reg[29][4] Q
netloc mem_reg[29][4] 1 9 1 10020 17480n
load net mem_reg[29][5] -pin dout[5]_i_25 I3 -pin mem_reg[29][5] Q
netloc mem_reg[29][5] 1 9 1 10400 17630n
load net mem_reg[29][6] -pin dout[6]_i_25 I3 -pin mem_reg[29][6] Q
netloc mem_reg[29][6] 1 9 1 11000 17780n
load net mem_reg[29][7] -pin dout[7]_i_26 I3 -pin mem_reg[29][7] Q
netloc mem_reg[29][7] 1 9 1 5440 17930n
load net mem_reg[2][0] -pin dout[0]_i_26 I1 -pin mem_reg[2][0] Q
netloc mem_reg[2][0] 1 9 1 3800 39510n
load net mem_reg[2][1] -pin dout[1]_i_26 I1 -pin mem_reg[2][1] Q
netloc mem_reg[2][1] 1 9 1 6660 40190n
load net mem_reg[2][2] -pin dout[2]_i_26 I1 -pin mem_reg[2][2] Q
netloc mem_reg[2][2] 1 9 1 4580 42590n
load net mem_reg[2][3] -pin dout[3]_i_26 I1 -pin mem_reg[2][3] Q
netloc mem_reg[2][3] 1 9 1 4420 43340n
load net mem_reg[2][4] -pin dout[4]_i_26 I1 -pin mem_reg[2][4] Q
netloc mem_reg[2][4] 1 9 1 4200 44240n
load net mem_reg[2][5] -pin dout[5]_i_26 I1 -pin mem_reg[2][5] Q
netloc mem_reg[2][5] 1 9 1 3800 44970n
load net mem_reg[2][6] -pin dout[6]_i_26 I1 -pin mem_reg[2][6] Q
netloc mem_reg[2][6] 1 9 1 4120 45470n
load net mem_reg[2][7] -pin dout[7]_i_27 I1 -pin mem_reg[2][7] Q
netloc mem_reg[2][7] 1 9 1 3880 45770n
load net mem_reg[30][0] -pin dout[0]_i_25 I1 -pin mem_reg[30][0] Q
netloc mem_reg[30][0] 1 9 1 7960 18080n
load net mem_reg[30][1] -pin dout[1]_i_25 I1 -pin mem_reg[30][1] Q
netloc mem_reg[30][1] 1 9 1 8660 18230n
load net mem_reg[30][2] -pin dout[2]_i_25 I1 -pin mem_reg[30][2] Q
netloc mem_reg[30][2] 1 9 1 6880 18380n
load net mem_reg[30][3] -pin dout[3]_i_25 I1 -pin mem_reg[30][3] Q
netloc mem_reg[30][3] 1 9 1 9440 18530n
load net mem_reg[30][4] -pin dout[4]_i_25 I1 -pin mem_reg[30][4] Q
netloc mem_reg[30][4] 1 9 1 9940 18680n
load net mem_reg[30][5] -pin dout[5]_i_25 I1 -pin mem_reg[30][5] Q
netloc mem_reg[30][5] 1 9 1 10280 18830n
load net mem_reg[30][6] -pin dout[6]_i_25 I1 -pin mem_reg[30][6] Q
netloc mem_reg[30][6] 1 9 1 10700 18980n
load net mem_reg[30][7] -pin dout[7]_i_26 I1 -pin mem_reg[30][7] Q
netloc mem_reg[30][7] 1 9 1 5340 19130n
load net mem_reg[31][0] -pin dout[0]_i_25 I0 -pin mem_reg[31][0] Q
netloc mem_reg[31][0] 1 9 1 7780 19280n
load net mem_reg[31][1] -pin dout[1]_i_25 I0 -pin mem_reg[31][1] Q
netloc mem_reg[31][1] 1 9 1 8500 19430n
load net mem_reg[31][2] -pin dout[2]_i_25 I0 -pin mem_reg[31][2] Q
netloc mem_reg[31][2] 1 9 1 6700 19580n
load net mem_reg[31][3] -pin dout[3]_i_25 I0 -pin mem_reg[31][3] Q
netloc mem_reg[31][3] 1 9 1 9220 19730n
load net mem_reg[31][4] -pin dout[4]_i_25 I0 -pin mem_reg[31][4] Q
netloc mem_reg[31][4] 1 9 1 9800 19880n
load net mem_reg[31][5] -pin dout[5]_i_25 I0 -pin mem_reg[31][5] Q
netloc mem_reg[31][5] 1 9 1 10120 20030n
load net mem_reg[31][6] -pin dout[6]_i_25 I0 -pin mem_reg[31][6] Q
netloc mem_reg[31][6] 1 9 1 10540 20180n
load net mem_reg[31][7] -pin dout[7]_i_26 I0 -pin mem_reg[31][7] Q
netloc mem_reg[31][7] 1 9 1 5180 20330n
load net mem_reg[32][0] -pin dout[0]_i_18 I5 -pin mem_reg[32][0] Q
netloc mem_reg[32][0] 1 9 1 6120 33380n
load net mem_reg[32][1] -pin dout[1]_i_18 I5 -pin mem_reg[32][1] Q
netloc mem_reg[32][1] 1 9 1 6620 33530n
load net mem_reg[32][2] -pin dout[2]_i_18 I5 -pin mem_reg[32][2] Q
netloc mem_reg[32][2] 1 9 1 5360 33680n
load net mem_reg[32][3] -pin dout[3]_i_18 I5 -pin mem_reg[32][3] Q
netloc mem_reg[32][3] 1 9 1 7320 33830n
load net mem_reg[32][4] -pin dout[4]_i_18 I5 -pin mem_reg[32][4] Q
netloc mem_reg[32][4] 1 9 1 4340 32100n
load net mem_reg[32][5] -pin dout[5]_i_18 I5 -pin mem_reg[32][5] Q
netloc mem_reg[32][5] 1 9 1 4120 30060n
load net mem_reg[32][6] -pin dout[6]_i_18 I5 -pin mem_reg[32][6] Q
netloc mem_reg[32][6] 1 9 1 3880 28020n
load net mem_reg[32][7] -pin dout[7]_i_19 I5 -pin mem_reg[32][7] Q
netloc mem_reg[32][7] 1 9 1 4000 44390n
load net mem_reg[33][0] -pin dout[0]_i_18 I3 -pin mem_reg[33][0] Q
netloc mem_reg[33][0] 1 9 1 8120 20480n
load net mem_reg[33][1] -pin dout[1]_i_18 I3 -pin mem_reg[33][1] Q
netloc mem_reg[33][1] 1 9 1 8760 20630n
load net mem_reg[33][2] -pin dout[2]_i_18 I3 -pin mem_reg[33][2] Q
netloc mem_reg[33][2] 1 9 1 7120 20780n
load net mem_reg[33][3] -pin dout[3]_i_18 I3 -pin mem_reg[33][3] Q
netloc mem_reg[33][3] 1 9 1 8300 26780n
load net mem_reg[33][4] -pin dout[4]_i_18 I3 -pin mem_reg[33][4] Q
netloc mem_reg[33][4] 1 9 1 8920 26930n
load net mem_reg[33][5] -pin dout[5]_i_18 I3 -pin mem_reg[33][5] Q
netloc mem_reg[33][5] 1 9 1 9620 27080n
load net mem_reg[33][6] -pin dout[6]_i_18 I3 -pin mem_reg[33][6] Q
netloc mem_reg[33][6] 1 9 1 3880 27230n
load net mem_reg[33][7] -pin dout[7]_i_19 I3 -pin mem_reg[33][7] Q
netloc mem_reg[33][7] 1 9 1 4320 33080n
load net mem_reg[34][0] -pin dout[0]_i_18 I1 -pin mem_reg[34][0] Q
netloc mem_reg[34][0] 1 9 1 3980 29480n
load net mem_reg[34][1] -pin dout[1]_i_18 I1 -pin mem_reg[34][1] Q
netloc mem_reg[34][1] 1 9 1 5460 29630n
load net mem_reg[34][2] -pin dout[2]_i_18 I1 -pin mem_reg[34][2] Q
netloc mem_reg[34][2] 1 9 1 5780 29780n
load net mem_reg[34][3] -pin dout[3]_i_18 I1 -pin mem_reg[34][3] Q
netloc mem_reg[34][3] 1 9 1 7840 29930n
load net mem_reg[34][4] -pin dout[4]_i_18 I1 -pin mem_reg[34][4] Q
netloc mem_reg[34][4] 1 9 1 8440 30080n
load net mem_reg[34][5] -pin dout[5]_i_18 I1 -pin mem_reg[34][5] Q
netloc mem_reg[34][5] 1 9 1 4100 29980n
load net mem_reg[34][6] -pin dout[6]_i_18 I1 -pin mem_reg[34][6] Q
netloc mem_reg[34][6] 1 9 1 3860 27940n
load net mem_reg[34][7] -pin dout[7]_i_19 I1 -pin mem_reg[34][7] Q
netloc mem_reg[34][7] 1 9 1 4300 33230n
load net mem_reg[35][0] -pin dout[0]_i_18 I0 -pin mem_reg[35][0] Q
netloc mem_reg[35][0] 1 9 1 6100 34430n
load net mem_reg[35][1] -pin dout[1]_i_18 I0 -pin mem_reg[35][1] Q
netloc mem_reg[35][1] 1 9 1 5380 34580n
load net mem_reg[35][2] -pin dout[2]_i_18 I0 -pin mem_reg[35][2] Q
netloc mem_reg[35][2] 1 9 1 5300 34730n
load net mem_reg[35][3] -pin dout[3]_i_18 I0 -pin mem_reg[35][3] Q
netloc mem_reg[35][3] 1 9 1 4680 34040n
load net mem_reg[35][4] -pin dout[4]_i_18 I0 -pin mem_reg[35][4] Q
netloc mem_reg[35][4] 1 9 1 4360 32000n
load net mem_reg[35][5] -pin dout[5]_i_18 I0 -pin mem_reg[35][5] Q
netloc mem_reg[35][5] 1 9 1 4160 29960n
load net mem_reg[35][6] -pin dout[6]_i_18 I0 -pin mem_reg[35][6] Q
netloc mem_reg[35][6] 1 9 1 3920 27920n
load net mem_reg[35][7] -pin dout[7]_i_19 I0 -pin mem_reg[35][7] Q
netloc mem_reg[35][7] 1 9 1 4080 44540n
load net mem_reg[36][0] -pin dout[0]_i_19 I5 -pin mem_reg[36][0] Q
netloc mem_reg[36][0] 1 9 1 6820 27380n
load net mem_reg[36][1] -pin dout[1]_i_19 I5 -pin mem_reg[36][1] Q
netloc mem_reg[36][1] 1 9 1 7520 27530n
load net mem_reg[36][2] -pin dout[2]_i_19 I5 -pin mem_reg[36][2] Q
netloc mem_reg[36][2] 1 9 1 5940 27680n
load net mem_reg[36][3] -pin dout[3]_i_19 I5 -pin mem_reg[36][3] Q
netloc mem_reg[36][3] 1 9 1 4980 27830n
load net mem_reg[36][4] -pin dout[4]_i_19 I5 -pin mem_reg[36][4] Q
netloc mem_reg[36][4] 1 9 1 3800 27980n
load net mem_reg[36][5] -pin dout[5]_i_19 I5 -pin mem_reg[36][5] Q
netloc mem_reg[36][5] 1 9 1 4260 28130n
load net mem_reg[36][6] -pin dout[6]_i_19 I5 -pin mem_reg[36][6] Q
netloc mem_reg[36][6] 1 9 1 3840 28190n
load net mem_reg[36][7] -pin dout[7]_i_20 I5 -pin mem_reg[36][7] Q
netloc mem_reg[36][7] 1 9 1 4020 43640n
load net mem_reg[37][0] -pin dout[0]_i_19 I3 -pin mem_reg[37][0] Q
netloc mem_reg[37][0] 1 9 1 7940 20930n
load net mem_reg[37][1] -pin dout[1]_i_19 I3 -pin mem_reg[37][1] Q
netloc mem_reg[37][1] 1 9 1 8620 21080n
load net mem_reg[37][2] -pin dout[2]_i_19 I3 -pin mem_reg[37][2] Q
netloc mem_reg[37][2] 1 9 1 6920 21230n
load net mem_reg[37][3] -pin dout[3]_i_19 I3 -pin mem_reg[37][3] Q
netloc mem_reg[37][3] 1 9 1 9280 21380n
load net mem_reg[37][4] -pin dout[4]_i_19 I3 -pin mem_reg[37][4] Q
netloc mem_reg[37][4] 1 9 1 9820 21530n
load net mem_reg[37][5] -pin dout[5]_i_19 I3 -pin mem_reg[37][5] Q
netloc mem_reg[37][5] 1 9 1 10200 21680n
load net mem_reg[37][6] -pin dout[6]_i_19 I3 -pin mem_reg[37][6] Q
netloc mem_reg[37][6] 1 9 1 10560 21830n
load net mem_reg[37][7] -pin dout[7]_i_20 I3 -pin mem_reg[37][7] Q
netloc mem_reg[37][7] 1 9 1 5320 21980n
load net mem_reg[38][0] -pin dout[0]_i_19 I1 -pin mem_reg[38][0] Q
netloc mem_reg[38][0] 1 9 1 7740 22130n
load net mem_reg[38][1] -pin dout[1]_i_19 I1 -pin mem_reg[38][1] Q
netloc mem_reg[38][1] 1 9 1 8460 22280n
load net mem_reg[38][2] -pin dout[2]_i_19 I1 -pin mem_reg[38][2] Q
netloc mem_reg[38][2] 1 9 1 6720 22430n
load net mem_reg[38][3] -pin dout[3]_i_19 I1 -pin mem_reg[38][3] Q
netloc mem_reg[38][3] 1 9 1 9040 22580n
load net mem_reg[38][4] -pin dout[4]_i_19 I1 -pin mem_reg[38][4] Q
netloc mem_reg[38][4] 1 9 1 9680 22730n
load net mem_reg[38][5] -pin dout[5]_i_19 I1 -pin mem_reg[38][5] Q
netloc mem_reg[38][5] 1 9 1 10080 22880n
load net mem_reg[38][6] -pin dout[6]_i_19 I1 -pin mem_reg[38][6] Q
netloc mem_reg[38][6] 1 9 1 10380 23030n
load net mem_reg[38][7] -pin dout[7]_i_20 I1 -pin mem_reg[38][7] Q
netloc mem_reg[38][7] 1 9 1 5160 23180n
load net mem_reg[39][0] -pin dout[0]_i_19 I0 -pin mem_reg[39][0] Q
netloc mem_reg[39][0] 1 9 1 7640 23330n
load net mem_reg[39][1] -pin dout[1]_i_19 I0 -pin mem_reg[39][1] Q
netloc mem_reg[39][1] 1 9 1 8260 23480n
load net mem_reg[39][2] -pin dout[2]_i_19 I0 -pin mem_reg[39][2] Q
netloc mem_reg[39][2] 1 9 1 6540 23630n
load net mem_reg[39][3] -pin dout[3]_i_19 I0 -pin mem_reg[39][3] Q
netloc mem_reg[39][3] 1 9 1 8780 23780n
load net mem_reg[39][4] -pin dout[4]_i_19 I0 -pin mem_reg[39][4] Q
netloc mem_reg[39][4] 1 9 1 9500 23930n
load net mem_reg[39][5] -pin dout[5]_i_19 I0 -pin mem_reg[39][5] Q
netloc mem_reg[39][5] 1 9 1 9960 24080n
load net mem_reg[39][6] -pin dout[6]_i_19 I0 -pin mem_reg[39][6] Q
netloc mem_reg[39][6] 1 9 1 10260 24230n
load net mem_reg[39][7] -pin dout[7]_i_20 I0 -pin mem_reg[39][7] Q
netloc mem_reg[39][7] 1 9 1 5060 24380n
load net mem_reg[3][0] -pin dout[0]_i_26 I0 -pin mem_reg[3][0] Q
netloc mem_reg[3][0] 1 9 1 6240 39490n
load net mem_reg[3][1] -pin dout[1]_i_26 I0 -pin mem_reg[3][1] Q
netloc mem_reg[3][1] 1 9 1 6640 40170n
load net mem_reg[3][2] -pin dout[2]_i_26 I0 -pin mem_reg[3][2] Q
netloc mem_reg[3][2] 1 9 1 4560 42890n
load net mem_reg[3][3] -pin dout[3]_i_26 I0 -pin mem_reg[3][3] Q
netloc mem_reg[3][3] 1 9 1 4400 43490n
load net mem_reg[3][4] -pin dout[4]_i_26 I0 -pin mem_reg[3][4] Q
netloc mem_reg[3][4] 1 9 1 4220 44090n
load net mem_reg[3][5] -pin dout[5]_i_26 I0 -pin mem_reg[3][5] Q
netloc mem_reg[3][5] 1 9 1 4200 44840n
load net mem_reg[3][6] -pin dout[6]_i_26 I0 -pin mem_reg[3][6] Q
netloc mem_reg[3][6] 1 9 1 4100 45620n
load net mem_reg[3][7] -pin dout[7]_i_27 I0 -pin mem_reg[3][7] Q
netloc mem_reg[3][7] 1 9 1 3860 47930n
load net mem_reg[40][0] -pin dout[0]_i_20 I5 -pin mem_reg[40][0] Q
netloc mem_reg[40][0] 1 9 1 5820 35480n
load net mem_reg[40][1] -pin dout[1]_i_20 I5 -pin mem_reg[40][1] Q
netloc mem_reg[40][1] 1 9 1 6400 35630n
load net mem_reg[40][2] -pin dout[2]_i_20 I5 -pin mem_reg[40][2] Q
netloc mem_reg[40][2] 1 9 1 5040 35780n
load net mem_reg[40][3] -pin dout[3]_i_20 I5 -pin mem_reg[40][3] Q
netloc mem_reg[40][3] 1 9 1 4820 34480n
load net mem_reg[40][4] -pin dout[4]_i_20 I5 -pin mem_reg[40][4] Q
netloc mem_reg[40][4] 1 9 1 4420 32440n
load net mem_reg[40][5] -pin dout[5]_i_20 I5 -pin mem_reg[40][5] Q
netloc mem_reg[40][5] 1 9 1 4240 30400n
load net mem_reg[40][6] -pin dout[6]_i_20 I5 -pin mem_reg[40][6] Q
netloc mem_reg[40][6] 1 9 1 4020 28360n
load net mem_reg[40][7] -pin dout[7]_i_21 I5 -pin mem_reg[40][7] Q
netloc mem_reg[40][7] 1 9 1 3940 46220n
load net mem_reg[41][0] -pin dout[0]_i_20 I3 -pin mem_reg[41][0] Q
netloc mem_reg[41][0] 1 9 1 7380 24530n
load net mem_reg[41][1] -pin dout[1]_i_20 I3 -pin mem_reg[41][1] Q
netloc mem_reg[41][1] 1 9 1 7880 24680n
load net mem_reg[41][2] -pin dout[2]_i_20 I3 -pin mem_reg[41][2] Q
netloc mem_reg[41][2] 1 9 1 6280 24830n
load net mem_reg[41][3] -pin dout[3]_i_20 I3 -pin mem_reg[41][3] Q
netloc mem_reg[41][3] 1 9 1 8540 24980n
load net mem_reg[41][4] -pin dout[4]_i_20 I3 -pin mem_reg[41][4] Q
netloc mem_reg[41][4] 1 9 1 9180 25130n
load net mem_reg[41][5] -pin dout[5]_i_20 I3 -pin mem_reg[41][5] Q
netloc mem_reg[41][5] 1 9 1 9740 25280n
load net mem_reg[41][6] -pin dout[6]_i_20 I3 -pin mem_reg[41][6] Q
netloc mem_reg[41][6] 1 9 1 10060 25430n
load net mem_reg[41][7] -pin dout[7]_i_21 I3 -pin mem_reg[41][7] Q
netloc mem_reg[41][7] 1 9 1 4800 25580n
load net mem_reg[42][0] -pin dout[0]_i_20 I1 -pin mem_reg[42][0] Q
netloc mem_reg[42][0] 1 9 1 5720 37580n
load net mem_reg[42][1] -pin dout[1]_i_20 I1 -pin mem_reg[42][1] Q
netloc mem_reg[42][1] 1 9 1 5380 36440n
load net mem_reg[42][2] -pin dout[2]_i_20 I1 -pin mem_reg[42][2] Q
netloc mem_reg[42][2] 1 9 1 5000 37880n
load net mem_reg[42][3] -pin dout[3]_i_20 I1 -pin mem_reg[42][3] Q
netloc mem_reg[42][3] 1 9 1 4980 34400n
load net mem_reg[42][4] -pin dout[4]_i_20 I1 -pin mem_reg[42][4] Q
netloc mem_reg[42][4] 1 9 1 4560 32360n
load net mem_reg[42][5] -pin dout[5]_i_20 I1 -pin mem_reg[42][5] Q
netloc mem_reg[42][5] 1 9 1 4260 30320n
load net mem_reg[42][6] -pin dout[6]_i_20 I1 -pin mem_reg[42][6] Q
netloc mem_reg[42][6] 1 9 1 4060 28280n
load net mem_reg[42][7] -pin dout[7]_i_21 I1 -pin mem_reg[42][7] Q
netloc mem_reg[42][7] 1 9 1 3960 46370n
load net mem_reg[43][0] -pin dout[0]_i_20 I0 -pin mem_reg[43][0] Q
netloc mem_reg[43][0] 1 9 1 5900 38470n
load net mem_reg[43][1] -pin dout[1]_i_20 I0 -pin mem_reg[43][1] Q
netloc mem_reg[43][1] 1 9 1 5460 36420n
load net mem_reg[43][2] -pin dout[2]_i_20 I0 -pin mem_reg[43][2] Q
netloc mem_reg[43][2] 1 9 1 4980 41030n
load net mem_reg[43][3] -pin dout[3]_i_20 I0 -pin mem_reg[43][3] Q
netloc mem_reg[43][3] 1 9 1 5280 34380n
load net mem_reg[43][4] -pin dout[4]_i_20 I0 -pin mem_reg[43][4] Q
netloc mem_reg[43][4] 1 9 1 4840 32340n
load net mem_reg[43][5] -pin dout[5]_i_20 I0 -pin mem_reg[43][5] Q
netloc mem_reg[43][5] 1 9 1 4440 30300n
load net mem_reg[43][6] -pin dout[6]_i_20 I0 -pin mem_reg[43][6] Q
netloc mem_reg[43][6] 1 9 1 4220 28260n
load net mem_reg[43][7] -pin dout[7]_i_21 I0 -pin mem_reg[43][7] Q
netloc mem_reg[43][7] 1 9 1 3800 47350n
load net mem_reg[44][0] -pin dout[0]_i_21 I5 -pin mem_reg[44][0] Q
netloc mem_reg[44][0] 1 9 1 6060 38740n
load net mem_reg[44][1] -pin dout[1]_i_21 I5 -pin mem_reg[44][1] Q
netloc mem_reg[44][1] 1 9 1 3820 36690n
load net mem_reg[44][2] -pin dout[2]_i_21 I5 -pin mem_reg[44][2] Q
netloc mem_reg[44][2] 1 9 1 4900 39530n
load net mem_reg[44][3] -pin dout[3]_i_21 I5 -pin mem_reg[44][3] Q
netloc mem_reg[44][3] 1 9 1 5220 34650n
load net mem_reg[44][4] -pin dout[4]_i_21 I5 -pin mem_reg[44][4] Q
netloc mem_reg[44][4] 1 9 1 4780 32610n
load net mem_reg[44][5] -pin dout[5]_i_21 I5 -pin mem_reg[44][5] Q
netloc mem_reg[44][5] 1 9 1 4400 30570n
load net mem_reg[44][6] -pin dout[6]_i_21 I5 -pin mem_reg[44][6] Q
netloc mem_reg[44][6] 1 9 1 4200 28530n
load net mem_reg[44][7] -pin dout[7]_i_22 I5 -pin mem_reg[44][7] Q
netloc mem_reg[44][7] 1 9 1 3980 43790n
load net mem_reg[45][0] -pin dout[0]_i_21 I3 -pin mem_reg[45][0] Q
netloc mem_reg[45][0] 1 9 1 6100 38700n
load net mem_reg[45][1] -pin dout[1]_i_21 I3 -pin mem_reg[45][1] Q
netloc mem_reg[45][1] 1 9 1 5600 36650n
load net mem_reg[45][2] -pin dout[2]_i_21 I3 -pin mem_reg[45][2] Q
netloc mem_reg[45][2] 1 9 1 7900 42120n
load net mem_reg[45][3] -pin dout[3]_i_21 I3 -pin mem_reg[45][3] Q
netloc mem_reg[45][3] 1 9 1 5880 34610n
load net mem_reg[45][4] -pin dout[4]_i_21 I3 -pin mem_reg[45][4] Q
netloc mem_reg[45][4] 1 9 1 5420 32570n
load net mem_reg[45][5] -pin dout[5]_i_21 I3 -pin mem_reg[45][5] Q
netloc mem_reg[45][5] 1 9 1 4960 30530n
load net mem_reg[45][6] -pin dout[6]_i_21 I3 -pin mem_reg[45][6] Q
netloc mem_reg[45][6] 1 9 1 4500 28490n
load net mem_reg[45][7] -pin dout[7]_i_22 I3 -pin mem_reg[45][7] Q
netloc mem_reg[45][7] 1 9 1 9680 47580n
load net mem_reg[46][0] -pin dout[0]_i_21 I1 -pin mem_reg[46][0] Q
netloc mem_reg[46][0] 1 9 1 7000 38660n
load net mem_reg[46][1] -pin dout[1]_i_21 I1 -pin mem_reg[46][1] Q
netloc mem_reg[46][1] 1 9 1 6500 36610n
load net mem_reg[46][2] -pin dout[2]_i_21 I1 -pin mem_reg[46][2] Q
netloc mem_reg[46][2] 1 9 1 8060 42080n
load net mem_reg[46][3] -pin dout[3]_i_21 I1 -pin mem_reg[46][3] Q
netloc mem_reg[46][3] 1 9 1 6080 34570n
load net mem_reg[46][4] -pin dout[4]_i_21 I1 -pin mem_reg[46][4] Q
netloc mem_reg[46][4] 1 9 1 5500 32530n
load net mem_reg[46][5] -pin dout[5]_i_21 I1 -pin mem_reg[46][5] Q
netloc mem_reg[46][5] 1 9 1 5080 30490n
load net mem_reg[46][6] -pin dout[6]_i_21 I1 -pin mem_reg[46][6] Q
netloc mem_reg[46][6] 1 9 1 4620 28450n
load net mem_reg[46][7] -pin dout[7]_i_22 I1 -pin mem_reg[46][7] Q
netloc mem_reg[46][7] 1 9 1 9860 47540n
load net mem_reg[47][0] -pin dout[0]_i_21 I0 -pin mem_reg[47][0] Q
netloc mem_reg[47][0] 1 9 1 7220 38640n
load net mem_reg[47][1] -pin dout[1]_i_21 I0 -pin mem_reg[47][1] Q
netloc mem_reg[47][1] 1 9 1 6620 36590n
load net mem_reg[47][2] -pin dout[2]_i_21 I0 -pin mem_reg[47][2] Q
netloc mem_reg[47][2] 1 9 1 8340 42060n
load net mem_reg[47][3] -pin dout[3]_i_21 I0 -pin mem_reg[47][3] Q
netloc mem_reg[47][3] 1 9 1 6200 34550n
load net mem_reg[47][4] -pin dout[4]_i_21 I0 -pin mem_reg[47][4] Q
netloc mem_reg[47][4] 1 9 1 5680 32510n
load net mem_reg[47][5] -pin dout[5]_i_21 I0 -pin mem_reg[47][5] Q
netloc mem_reg[47][5] 1 9 1 5200 30470n
load net mem_reg[47][6] -pin dout[6]_i_21 I0 -pin mem_reg[47][6] Q
netloc mem_reg[47][6] 1 9 1 4700 28430n
load net mem_reg[47][7] -pin dout[7]_i_22 I0 -pin mem_reg[47][7] Q
netloc mem_reg[47][7] 1 9 1 9960 47520n
load net mem_reg[48][0] -pin dout[0]_i_14 I5 -pin mem_reg[48][0] Q
netloc mem_reg[48][0] 1 9 1 7060 37550n
load net mem_reg[48][1] -pin dout[1]_i_14 I5 -pin mem_reg[48][1] Q
netloc mem_reg[48][1] 1 9 1 6480 35500n
load net mem_reg[48][2] -pin dout[2]_i_14 I5 -pin mem_reg[48][2] Q
netloc mem_reg[48][2] 1 9 1 8040 40950n
load net mem_reg[48][3] -pin dout[3]_i_14 I5 -pin mem_reg[48][3] Q
netloc mem_reg[48][3] 1 9 1 6000 33460n
load net mem_reg[48][4] -pin dout[4]_i_14 I5 -pin mem_reg[48][4] Q
netloc mem_reg[48][4] 1 9 1 5480 31420n
load net mem_reg[48][5] -pin dout[5]_i_14 I5 -pin mem_reg[48][5] Q
netloc mem_reg[48][5] 1 9 1 5020 29380n
load net mem_reg[48][6] -pin dout[6]_i_14 I5 -pin mem_reg[48][6] Q
netloc mem_reg[48][6] 1 9 1 4540 27340n
load net mem_reg[48][7] -pin dout[7]_i_15 I5 -pin mem_reg[48][7] Q
netloc mem_reg[48][7] 1 9 1 9820 46420n
load net mem_reg[49][0] -pin dout[0]_i_14 I3 -pin mem_reg[49][0] Q
netloc mem_reg[49][0] 1 9 1 7260 37510n
load net mem_reg[49][1] -pin dout[1]_i_14 I3 -pin mem_reg[49][1] Q
netloc mem_reg[49][1] 1 9 1 6600 35460n
load net mem_reg[49][2] -pin dout[2]_i_14 I3 -pin mem_reg[49][2] Q
netloc mem_reg[49][2] 1 9 1 8320 40910n
load net mem_reg[49][3] -pin dout[3]_i_14 I3 -pin mem_reg[49][3] Q
netloc mem_reg[49][3] 1 9 1 6140 33420n
load net mem_reg[49][4] -pin dout[4]_i_14 I3 -pin mem_reg[49][4] Q
netloc mem_reg[49][4] 1 9 1 5580 31380n
load net mem_reg[49][5] -pin dout[5]_i_14 I3 -pin mem_reg[49][5] Q
netloc mem_reg[49][5] 1 9 1 5120 29340n
load net mem_reg[49][6] -pin dout[6]_i_14 I3 -pin mem_reg[49][6] Q
netloc mem_reg[49][6] 1 9 1 4660 27300n
load net mem_reg[49][7] -pin dout[7]_i_15 I3 -pin mem_reg[49][7] Q
netloc mem_reg[49][7] 1 9 1 9940 46380n
load net mem_reg[4][0] -pin dout[0]_i_27 I5 -pin mem_reg[4][0] Q
netloc mem_reg[4][0] 1 9 1 3860 30530n
load net mem_reg[4][1] -pin dout[1]_i_27 I5 -pin mem_reg[4][1] Q
netloc mem_reg[4][1] 1 9 1 5840 30680n
load net mem_reg[4][2] -pin dout[2]_i_27 I5 -pin mem_reg[4][2] Q
netloc mem_reg[4][2] 1 9 1 5100 30830n
load net mem_reg[4][3] -pin dout[3]_i_27 I5 -pin mem_reg[4][3] Q
netloc mem_reg[4][3] 1 9 1 4920 30980n
load net mem_reg[4][4] -pin dout[4]_i_27 I5 -pin mem_reg[4][4] Q
netloc mem_reg[4][4] 1 9 1 4760 31130n
load net mem_reg[4][5] -pin dout[5]_i_27 I5 -pin mem_reg[4][5] Q
netloc mem_reg[4][5] 1 9 1 4640 31280n
load net mem_reg[4][6] -pin dout[6]_i_27 I5 -pin mem_reg[4][6] Q
netloc mem_reg[4][6] 1 9 1 4480 31430n
load net mem_reg[4][7] -pin dout[7]_i_28 I5 -pin mem_reg[4][7] Q
netloc mem_reg[4][7] 1 9 1 4140 31580n
load net mem_reg[50][0] -pin dout[0]_i_14 I1 -pin mem_reg[50][0] Q
netloc mem_reg[50][0] 1 9 1 7420 37470n
load net mem_reg[50][1] -pin dout[1]_i_14 I1 -pin mem_reg[50][1] Q
netloc mem_reg[50][1] 1 9 1 6800 35420n
load net mem_reg[50][2] -pin dout[2]_i_14 I1 -pin mem_reg[50][2] Q
netloc mem_reg[50][2] 1 9 1 8500 40870n
load net mem_reg[50][3] -pin dout[3]_i_14 I1 -pin mem_reg[50][3] Q
netloc mem_reg[50][3] 1 9 1 6320 33380n
load net mem_reg[50][4] -pin dout[4]_i_14 I1 -pin mem_reg[50][4] Q
netloc mem_reg[50][4] 1 9 1 5740 31340n
load net mem_reg[50][5] -pin dout[5]_i_14 I1 -pin mem_reg[50][5] Q
netloc mem_reg[50][5] 1 9 1 5240 29300n
load net mem_reg[50][6] -pin dout[6]_i_14 I1 -pin mem_reg[50][6] Q
netloc mem_reg[50][6] 1 9 1 4720 27260n
load net mem_reg[50][7] -pin dout[7]_i_15 I1 -pin mem_reg[50][7] Q
netloc mem_reg[50][7] 1 9 1 10040 46340n
load net mem_reg[51][0] -pin dout[0]_i_14 I0 -pin mem_reg[51][0] Q
netloc mem_reg[51][0] 1 9 1 7580 37450n
load net mem_reg[51][1] -pin dout[1]_i_14 I0 -pin mem_reg[51][1] Q
netloc mem_reg[51][1] 1 9 1 7040 35400n
load net mem_reg[51][2] -pin dout[2]_i_14 I0 -pin mem_reg[51][2] Q
netloc mem_reg[51][2] 1 9 1 8620 40850n
load net mem_reg[51][3] -pin dout[3]_i_14 I0 -pin mem_reg[51][3] Q
netloc mem_reg[51][3] 1 9 1 6440 33360n
load net mem_reg[51][4] -pin dout[4]_i_14 I0 -pin mem_reg[51][4] Q
netloc mem_reg[51][4] 1 9 1 5920 31320n
load net mem_reg[51][5] -pin dout[5]_i_14 I0 -pin mem_reg[51][5] Q
netloc mem_reg[51][5] 1 9 1 5400 29280n
load net mem_reg[51][6] -pin dout[6]_i_14 I0 -pin mem_reg[51][6] Q
netloc mem_reg[51][6] 1 9 1 4860 27240n
load net mem_reg[51][7] -pin dout[7]_i_15 I0 -pin mem_reg[51][7] Q
netloc mem_reg[51][7] 1 9 1 10200 46320n
load net mem_reg[52][0] -pin dout[0]_i_15 I5 -pin mem_reg[52][0] Q
netloc mem_reg[52][0] 1 9 1 7880 37720n
load net mem_reg[52][1] -pin dout[1]_i_15 I5 -pin mem_reg[52][1] Q
netloc mem_reg[52][1] 1 9 1 7440 35670n
load net mem_reg[52][2] -pin dout[2]_i_15 I5 -pin mem_reg[52][2] Q
netloc mem_reg[52][2] 1 9 1 9140 41130n
load net mem_reg[52][3] -pin dout[3]_i_15 I5 -pin mem_reg[52][3] Q
netloc mem_reg[52][3] 1 9 1 6760 33630n
load net mem_reg[52][4] -pin dout[4]_i_15 I5 -pin mem_reg[52][4] Q
netloc mem_reg[52][4] 1 9 1 6220 31590n
load net mem_reg[52][5] -pin dout[5]_i_15 I5 -pin mem_reg[52][5] Q
netloc mem_reg[52][5] 1 9 1 5660 29550n
load net mem_reg[52][6] -pin dout[6]_i_15 I5 -pin mem_reg[52][6] Q
netloc mem_reg[52][6] 1 9 1 5140 27510n
load net mem_reg[52][7] -pin dout[7]_i_16 I5 -pin mem_reg[52][7] Q
netloc mem_reg[52][7] 1 9 1 10580 46600n
load net mem_reg[53][0] -pin dout[0]_i_15 I3 -pin mem_reg[53][0] Q
netloc mem_reg[53][0] 1 9 1 8020 37680n
load net mem_reg[53][1] -pin dout[1]_i_15 I3 -pin mem_reg[53][1] Q
netloc mem_reg[53][1] 1 9 1 7600 35630n
load net mem_reg[53][2] -pin dout[2]_i_15 I3 -pin mem_reg[53][2] Q
netloc mem_reg[53][2] 1 9 1 9380 41090n
load net mem_reg[53][3] -pin dout[3]_i_15 I3 -pin mem_reg[53][3] Q
netloc mem_reg[53][3] 1 9 1 6980 33590n
load net mem_reg[53][4] -pin dout[4]_i_15 I3 -pin mem_reg[53][4] Q
netloc mem_reg[53][4] 1 9 1 6380 31550n
load net mem_reg[53][5] -pin dout[5]_i_15 I3 -pin mem_reg[53][5] Q
netloc mem_reg[53][5] 1 9 1 5800 29510n
load net mem_reg[53][6] -pin dout[6]_i_15 I3 -pin mem_reg[53][6] Q
netloc mem_reg[53][6] 1 9 1 5260 27470n
load net mem_reg[53][7] -pin dout[7]_i_16 I3 -pin mem_reg[53][7] Q
netloc mem_reg[53][7] 1 9 1 10660 46560n
load net mem_reg[54][0] -pin dout[0]_i_15 I1 -pin mem_reg[54][0] Q
netloc mem_reg[54][0] 1 9 1 8300 37640n
load net mem_reg[54][1] -pin dout[1]_i_15 I1 -pin mem_reg[54][1] Q
netloc mem_reg[54][1] 1 9 1 7720 35590n
load net mem_reg[54][2] -pin dout[2]_i_15 I1 -pin mem_reg[54][2] Q
netloc mem_reg[54][2] 1 9 1 9560 41050n
load net mem_reg[54][3] -pin dout[3]_i_15 I1 -pin mem_reg[54][3] Q
netloc mem_reg[54][3] 1 9 1 7200 33550n
load net mem_reg[54][4] -pin dout[4]_i_15 I1 -pin mem_reg[54][4] Q
netloc mem_reg[54][4] 1 9 1 6520 31510n
load net mem_reg[54][5] -pin dout[5]_i_15 I1 -pin mem_reg[54][5] Q
netloc mem_reg[54][5] 1 9 1 5980 29470n
load net mem_reg[54][6] -pin dout[6]_i_15 I1 -pin mem_reg[54][6] Q
netloc mem_reg[54][6] 1 9 1 5560 27430n
load net mem_reg[54][7] -pin dout[7]_i_16 I1 -pin mem_reg[54][7] Q
netloc mem_reg[54][7] 1 9 1 10780 46520n
load net mem_reg[55][0] -pin dout[0]_i_15 I0 -pin mem_reg[55][0] Q
netloc mem_reg[55][0] 1 9 1 8660 37620n
load net mem_reg[55][1] -pin dout[1]_i_15 I0 -pin mem_reg[55][1] Q
netloc mem_reg[55][1] 1 9 1 8080 35570n
load net mem_reg[55][2] -pin dout[2]_i_15 I0 -pin mem_reg[55][2] Q
netloc mem_reg[55][2] 1 9 1 9900 41030n
load net mem_reg[55][3] -pin dout[3]_i_15 I0 -pin mem_reg[55][3] Q
netloc mem_reg[55][3] 1 9 1 7560 33530n
load net mem_reg[55][4] -pin dout[4]_i_15 I0 -pin mem_reg[55][4] Q
netloc mem_reg[55][4] 1 9 1 6840 31490n
load net mem_reg[55][5] -pin dout[5]_i_15 I0 -pin mem_reg[55][5] Q
netloc mem_reg[55][5] 1 9 1 6300 29450n
load net mem_reg[55][6] -pin dout[6]_i_15 I0 -pin mem_reg[55][6] Q
netloc mem_reg[55][6] 1 9 1 5700 27410n
load net mem_reg[55][7] -pin dout[7]_i_16 I0 -pin mem_reg[55][7] Q
netloc mem_reg[55][7] 1 9 1 10880 46500n
load net mem_reg[56][0] -pin dout[0]_i_16 I5 -pin mem_reg[56][0] Q
netloc mem_reg[56][0] 1 9 1 9120 37890n
load net mem_reg[56][1] -pin dout[1]_i_16 I5 -pin mem_reg[56][1] Q
netloc mem_reg[56][1] 1 9 1 8540 35840n
load net mem_reg[56][2] -pin dout[2]_i_16 I5 -pin mem_reg[56][2] Q
netloc mem_reg[56][2] 1 9 1 10160 41310n
load net mem_reg[56][3] -pin dout[3]_i_16 I5 -pin mem_reg[56][3] Q
netloc mem_reg[56][3] 1 9 1 7860 33800n
load net mem_reg[56][4] -pin dout[4]_i_16 I5 -pin mem_reg[56][4] Q
netloc mem_reg[56][4] 1 9 1 7360 31760n
load net mem_reg[56][5] -pin dout[5]_i_16 I5 -pin mem_reg[56][5] Q
netloc mem_reg[56][5] 1 9 1 6580 29720n
load net mem_reg[56][6] -pin dout[6]_i_16 I5 -pin mem_reg[56][6] Q
netloc mem_reg[56][6] 1 9 1 6040 27680n
load net mem_reg[56][7] -pin dout[7]_i_17 I5 -pin mem_reg[56][7] Q
netloc mem_reg[56][7] 1 9 1 10960 46770n
load net mem_reg[57][0] -pin dout[0]_i_16 I3 -pin mem_reg[57][0] Q
netloc mem_reg[57][0] 1 9 1 9360 37850n
load net mem_reg[57][1] -pin dout[1]_i_16 I3 -pin mem_reg[57][1] Q
netloc mem_reg[57][1] 1 9 1 8680 35800n
load net mem_reg[57][2] -pin dout[2]_i_16 I3 -pin mem_reg[57][2] Q
netloc mem_reg[57][2] 1 9 1 10380 41270n
load net mem_reg[57][3] -pin dout[3]_i_16 I3 -pin mem_reg[57][3] Q
netloc mem_reg[57][3] 1 9 1 8000 33760n
load net mem_reg[57][4] -pin dout[4]_i_16 I3 -pin mem_reg[57][4] Q
netloc mem_reg[57][4] 1 9 1 7480 31720n
load net mem_reg[57][5] -pin dout[5]_i_16 I3 -pin mem_reg[57][5] Q
netloc mem_reg[57][5] 1 9 1 6740 29680n
load net mem_reg[57][6] -pin dout[6]_i_16 I3 -pin mem_reg[57][6] Q
netloc mem_reg[57][6] 1 9 1 6180 27640n
load net mem_reg[57][7] -pin dout[7]_i_17 I3 -pin mem_reg[57][7] Q
netloc mem_reg[57][7] 1 9 1 11020 46730n
load net mem_reg[58][0] -pin dout[0]_i_16 I1 -pin mem_reg[58][0] Q
netloc mem_reg[58][0] 1 9 1 9540 37810n
load net mem_reg[58][1] -pin dout[1]_i_16 I1 -pin mem_reg[58][1] Q
netloc mem_reg[58][1] 1 9 1 8880 35760n
load net mem_reg[58][2] -pin dout[2]_i_16 I1 -pin mem_reg[58][2] Q
netloc mem_reg[58][2] 1 9 1 10440 41230n
load net mem_reg[58][3] -pin dout[3]_i_16 I1 -pin mem_reg[58][3] Q
netloc mem_reg[58][3] 1 9 1 8280 33720n
load net mem_reg[58][4] -pin dout[4]_i_16 I1 -pin mem_reg[58][4] Q
netloc mem_reg[58][4] 1 9 1 7660 31680n
load net mem_reg[58][5] -pin dout[5]_i_16 I1 -pin mem_reg[58][5] Q
netloc mem_reg[58][5] 1 9 1 6960 29640n
load net mem_reg[58][6] -pin dout[6]_i_16 I1 -pin mem_reg[58][6] Q
netloc mem_reg[58][6] 1 9 1 6360 27600n
load net mem_reg[58][7] -pin dout[7]_i_17 I1 -pin mem_reg[58][7] Q
netloc mem_reg[58][7] 1 9 1 11080 46690n
load net mem_reg[59][0] -pin dout[0]_i_16 I0 -pin mem_reg[59][0] Q
netloc mem_reg[59][0] 1 9 1 9700 37790n
load net mem_reg[59][1] -pin dout[1]_i_16 I0 -pin mem_reg[59][1] Q
netloc mem_reg[59][1] 1 9 1 9100 35740n
load net mem_reg[59][2] -pin dout[2]_i_16 I0 -pin mem_reg[59][2] Q
netloc mem_reg[59][2] 1 9 1 10600 41210n
load net mem_reg[59][3] -pin dout[3]_i_16 I0 -pin mem_reg[59][3] Q
netloc mem_reg[59][3] 1 9 1 8480 33700n
load net mem_reg[59][4] -pin dout[4]_i_16 I0 -pin mem_reg[59][4] Q
netloc mem_reg[59][4] 1 9 1 7760 31660n
load net mem_reg[59][5] -pin dout[5]_i_16 I0 -pin mem_reg[59][5] Q
netloc mem_reg[59][5] 1 9 1 7180 29620n
load net mem_reg[59][6] -pin dout[6]_i_16 I0 -pin mem_reg[59][6] Q
netloc mem_reg[59][6] 1 9 1 6460 27580n
load net mem_reg[59][7] -pin dout[7]_i_17 I0 -pin mem_reg[59][7] Q
netloc mem_reg[59][7] 1 9 1 11160 46670n
load net mem_reg[5][0] -pin dout[0]_i_27 I3 -pin mem_reg[5][0] Q
netloc mem_reg[5][0] 1 9 1 9000 39720n
load net mem_reg[5][1] -pin dout[1]_i_27 I3 -pin mem_reg[5][1] Q
netloc mem_reg[5][1] 1 9 1 9440 40400n
load net mem_reg[5][2] -pin dout[2]_i_27 I3 -pin mem_reg[5][2] Q
netloc mem_reg[5][2] 1 9 1 10020 43140n
load net mem_reg[5][3] -pin dout[3]_i_27 I3 -pin mem_reg[5][3] Q
netloc mem_reg[5][3] 1 9 1 10140 43820n
load net mem_reg[5][4] -pin dout[4]_i_27 I3 -pin mem_reg[5][4] Q
netloc mem_reg[5][4] 1 9 1 10420 44500n
load net mem_reg[5][5] -pin dout[5]_i_27 I3 -pin mem_reg[5][5] Q
netloc mem_reg[5][5] 1 9 1 10560 45180n
load net mem_reg[5][6] -pin dout[6]_i_27 I3 -pin mem_reg[5][6] Q
netloc mem_reg[5][6] 1 9 1 10680 45860n
load net mem_reg[5][7] -pin dout[7]_i_28 I3 -pin mem_reg[5][7] Q
netloc mem_reg[5][7] 1 9 1 10920 48600n
load net mem_reg[60][0] -pin dout[0]_i_17 I5 -pin mem_reg[60][0] Q
netloc mem_reg[60][0] 1 9 1 9980 38060n
load net mem_reg[60][1] -pin dout[1]_i_17 I5 -pin mem_reg[60][1] Q
netloc mem_reg[60][1] 1 9 1 9600 36010n
load net mem_reg[60][2] -pin dout[2]_i_17 I5 -pin mem_reg[60][2] Q
netloc mem_reg[60][2] 1 9 1 10760 41480n
load net mem_reg[60][3] -pin dout[3]_i_17 I5 -pin mem_reg[60][3] Q
netloc mem_reg[60][3] 1 9 1 8840 33970n
load net mem_reg[60][4] -pin dout[4]_i_17 I5 -pin mem_reg[60][4] Q
netloc mem_reg[60][4] 1 9 1 8220 31930n
load net mem_reg[60][5] -pin dout[5]_i_17 I5 -pin mem_reg[60][5] Q
netloc mem_reg[60][5] 1 9 1 7540 29890n
load net mem_reg[60][6] -pin dout[6]_i_17 I5 -pin mem_reg[60][6] Q
netloc mem_reg[60][6] 1 9 1 6780 27850n
load net mem_reg[60][7] -pin dout[7]_i_18 I5 -pin mem_reg[60][7] Q
netloc mem_reg[60][7] 1 9 1 11300 46940n
load net mem_reg[61][0] -pin dout[0]_i_17 I3 -pin mem_reg[61][0] Q
netloc mem_reg[61][0] 1 9 1 10080 38020n
load net mem_reg[61][1] -pin dout[1]_i_17 I3 -pin mem_reg[61][1] Q
netloc mem_reg[61][1] 1 9 1 9740 35970n
load net mem_reg[61][2] -pin dout[2]_i_17 I3 -pin mem_reg[61][2] Q
netloc mem_reg[61][2] 1 9 1 10820 41440n
load net mem_reg[61][3] -pin dout[3]_i_17 I3 -pin mem_reg[61][3] Q
netloc mem_reg[61][3] 1 9 1 9060 33930n
load net mem_reg[61][4] -pin dout[4]_i_17 I3 -pin mem_reg[61][4] Q
netloc mem_reg[61][4] 1 9 1 8380 31890n
load net mem_reg[61][5] -pin dout[5]_i_17 I3 -pin mem_reg[61][5] Q
netloc mem_reg[61][5] 1 9 1 7700 29850n
load net mem_reg[61][6] -pin dout[6]_i_17 I3 -pin mem_reg[61][6] Q
netloc mem_reg[61][6] 1 9 1 7020 27810n
load net mem_reg[61][7] -pin dout[7]_i_18 I3 -pin mem_reg[61][7] Q
netloc mem_reg[61][7] 1 9 1 11380 46900n
load net mem_reg[62][0] -pin dout[0]_i_17 I1 -pin mem_reg[62][0] Q
netloc mem_reg[62][0] 1 9 1 10220 37980n
load net mem_reg[62][1] -pin dout[1]_i_17 I1 -pin mem_reg[62][1] Q
netloc mem_reg[62][1] 1 9 1 9880 35930n
load net mem_reg[62][2] -pin dout[2]_i_17 I1 -pin mem_reg[62][2] Q
netloc mem_reg[62][2] 1 9 1 10900 41400n
load net mem_reg[62][3] -pin dout[3]_i_17 I1 -pin mem_reg[62][3] Q
netloc mem_reg[62][3] 1 9 1 9320 33890n
load net mem_reg[62][4] -pin dout[4]_i_17 I1 -pin mem_reg[62][4] Q
netloc mem_reg[62][4] 1 9 1 8580 31850n
load net mem_reg[62][5] -pin dout[5]_i_17 I1 -pin mem_reg[62][5] Q
netloc mem_reg[62][5] 1 9 1 7820 29810n
load net mem_reg[62][6] -pin dout[6]_i_17 I1 -pin mem_reg[62][6] Q
netloc mem_reg[62][6] 1 9 1 7240 27770n
load net mem_reg[62][7] -pin dout[7]_i_18 I1 -pin mem_reg[62][7] Q
netloc mem_reg[62][7] 1 9 1 11420 46860n
load net mem_reg[63][0] -pin dout[0]_i_17 I0 -pin mem_reg[63][0] Q
netloc mem_reg[63][0] 1 9 1 10700 37960n
load net mem_reg[63][1] -pin dout[1]_i_17 I0 -pin mem_reg[63][1] Q
netloc mem_reg[63][1] 1 9 1 10480 35910n
load net mem_reg[63][2] -pin dout[2]_i_17 I0 -pin mem_reg[63][2] Q
netloc mem_reg[63][2] 1 9 1 11140 41380n
load net mem_reg[63][3] -pin dout[3]_i_17 I0 -pin mem_reg[63][3] Q
netloc mem_reg[63][3] 1 9 1 10060 33870n
load net mem_reg[63][4] -pin dout[4]_i_17 I0 -pin mem_reg[63][4] Q
netloc mem_reg[63][4] 1 9 1 9620 31830n
load net mem_reg[63][5] -pin dout[5]_i_17 I0 -pin mem_reg[63][5] Q
netloc mem_reg[63][5] 1 9 1 8820 29790n
load net mem_reg[63][6] -pin dout[6]_i_17 I0 -pin mem_reg[63][6] Q
netloc mem_reg[63][6] 1 9 1 8100 27750n
load net mem_reg[63][7] -pin dout[7]_i_18 I0 -pin mem_reg[63][7] Q
netloc mem_reg[63][7] 1 9 1 11600 46840n
load net mem_reg[6][0] -pin dout[0]_i_27 I1 -pin mem_reg[6][0] Q
netloc mem_reg[6][0] 1 9 1 10640 39680n
load net mem_reg[6][1] -pin dout[1]_i_27 I1 -pin mem_reg[6][1] Q
netloc mem_reg[6][1] 1 9 1 10740 40360n
load net mem_reg[6][2] -pin dout[2]_i_27 I1 -pin mem_reg[6][2] Q
netloc mem_reg[6][2] 1 9 1 11000 43100n
load net mem_reg[6][3] -pin dout[3]_i_27 I1 -pin mem_reg[6][3] Q
netloc mem_reg[6][3] 1 9 1 11060 43780n
load net mem_reg[6][4] -pin dout[4]_i_27 I1 -pin mem_reg[6][4] Q
netloc mem_reg[6][4] 1 9 1 11120 44460n
load net mem_reg[6][5] -pin dout[5]_i_27 I1 -pin mem_reg[6][5] Q
netloc mem_reg[6][5] 1 9 1 11220 45140n
load net mem_reg[6][6] -pin dout[6]_i_27 I1 -pin mem_reg[6][6] Q
netloc mem_reg[6][6] 1 9 1 11320 45820n
load net mem_reg[6][7] -pin dout[7]_i_28 I1 -pin mem_reg[6][7] Q
netloc mem_reg[6][7] 1 9 1 11520 48560n
load net mem_reg[7][0] -pin dout[0]_i_27 I0 -pin mem_reg[7][0] Q
netloc mem_reg[7][0] 1 9 1 10720 39660n
load net mem_reg[7][1] -pin dout[1]_i_27 I0 -pin mem_reg[7][1] Q
netloc mem_reg[7][1] 1 9 1 10800 40340n
load net mem_reg[7][2] -pin dout[2]_i_27 I0 -pin mem_reg[7][2] Q
netloc mem_reg[7][2] 1 9 1 11040 43080n
load net mem_reg[7][3] -pin dout[3]_i_27 I0 -pin mem_reg[7][3] Q
netloc mem_reg[7][3] 1 9 1 11100 43760n
load net mem_reg[7][4] -pin dout[4]_i_27 I0 -pin mem_reg[7][4] Q
netloc mem_reg[7][4] 1 9 1 11200 44440n
load net mem_reg[7][5] -pin dout[5]_i_27 I0 -pin mem_reg[7][5] Q
netloc mem_reg[7][5] 1 9 1 11280 45120n
load net mem_reg[7][6] -pin dout[6]_i_27 I0 -pin mem_reg[7][6] Q
netloc mem_reg[7][6] 1 9 1 11400 45800n
load net mem_reg[7][7] -pin dout[7]_i_28 I0 -pin mem_reg[7][7] Q
netloc mem_reg[7][7] 1 9 1 11560 48540n
load net mem_reg[8][0] -pin dout[0]_i_28 I5 -pin mem_reg[8][0] Q
netloc mem_reg[8][0] 1 9 1 10860 39930n
load net mem_reg[8][1] -pin dout[1]_i_28 I5 -pin mem_reg[8][1] Q
netloc mem_reg[8][1] 1 9 1 10940 40610n
load net mem_reg[8][2] -pin dout[2]_i_28 I5 -pin mem_reg[8][2] Q
netloc mem_reg[8][2] 1 9 1 11180 43350n
load net mem_reg[8][3] -pin dout[3]_i_28 I5 -pin mem_reg[8][3] Q
netloc mem_reg[8][3] 1 9 1 11260 44030n
load net mem_reg[8][4] -pin dout[4]_i_28 I5 -pin mem_reg[8][4] Q
netloc mem_reg[8][4] 1 9 1 11360 44710n
load net mem_reg[8][5] -pin dout[5]_i_28 I5 -pin mem_reg[8][5] Q
netloc mem_reg[8][5] 1 9 1 11440 45390n
load net mem_reg[8][6] -pin dout[6]_i_28 I5 -pin mem_reg[8][6] Q
netloc mem_reg[8][6] 1 9 1 11480 46070n
load net mem_reg[8][7] -pin dout[7]_i_29 I5 -pin mem_reg[8][7] Q
netloc mem_reg[8][7] 1 9 1 11580 48810n
load net mem_reg[9][0] -pin dout[0]_i_28 I3 -pin mem_reg[9][0] Q
netloc mem_reg[9][0] 1 9 1 10840 39890n
load net mem_reg[9][1] -pin dout[1]_i_28 I3 -pin mem_reg[9][1] Q
netloc mem_reg[9][1] 1 9 1 10980 40570n
load net mem_reg[9][2] -pin dout[2]_i_28 I3 -pin mem_reg[9][2] Q
netloc mem_reg[9][2] 1 9 1 11240 43310n
load net mem_reg[9][3] -pin dout[3]_i_28 I3 -pin mem_reg[9][3] Q
netloc mem_reg[9][3] 1 9 1 11340 43990n
load net mem_reg[9][4] -pin dout[4]_i_28 I3 -pin mem_reg[9][4] Q
netloc mem_reg[9][4] 1 9 1 11460 44670n
load net mem_reg[9][5] -pin dout[5]_i_28 I3 -pin mem_reg[9][5] Q
netloc mem_reg[9][5] 1 9 1 11500 45350n
load net mem_reg[9][6] -pin dout[6]_i_28 I3 -pin mem_reg[9][6] Q
netloc mem_reg[9][6] 1 9 1 11540 46030n
load net mem_reg[9][7] -pin dout[7]_i_29 I3 -pin mem_reg[9][7] Q
netloc mem_reg[9][7] 1 9 1 11620 48770n
load net q[0] -attr @rip(#1c1f28) Q[0] -pin one Q[0] -pin two D[0]
load net q[1] -attr @rip(#1c1f28) Q[1] -pin one Q[1] -pin two D[1]
load net q[2] -attr @rip(#1c1f28) Q[2] -pin one Q[2] -pin two D[2]
load net q[3] -attr @rip(#1c1f28) Q[3] -pin one Q[3] -pin two D[3]
load net q[4] -attr @rip(#1c1f28) Q[4] -pin one Q[4] -pin two D[4]
load net q[5] -attr @rip(#1c1f28) Q[5] -pin one Q[5] -pin two D[5]
load net rd_clk -port rd_clk -pin rd_clk_IBUF_inst I
netloc rd_clk 1 0 2 NJ 43040 NJ
load net rd_clk_IBUF -pin rd_clk_IBUF_BUFG_inst I -pin rd_clk_IBUF_inst O
netloc rd_clk_IBUF 1 2 1 NJ 43040
load net rd_clk_IBUF_BUFG -pin dout_reg[0] C -pin dout_reg[1] C -pin dout_reg[2] C -pin dout_reg[3] C -pin dout_reg[4] C -pin dout_reg[5] C -pin dout_reg[6] C -pin dout_reg[7] C -pin four CLK -pin rd_clk_IBUF_BUFG_inst O -pin rp_reg[0] C -pin rp_reg[1] C -pin rp_reg[2] C -pin rp_reg[3] C -pin rp_reg[4] C -pin rp_reg[5] C -pin three CLK
netloc rd_clk_IBUF_BUFG 1 3 11 770 43150 1080 42930 1480 47100 NJ 47100 NJ 47100 NJ 47100 3780J 46460 NJ 46460 NJ 46460 NJ 46460 12830
load net rd_en -port rd_en -pin rd_en_IBUF_inst I
netloc rd_en 1 0 4 NJ 42980 NJ 42980 NJ 42980 NJ
load net rd_en_IBUF -pin four rd_en_IBUF -pin rd_en_IBUF_inst O
netloc rd_en_IBUF 1 4 1 1120J 42980n
load net rd_reset_n -port rd_reset_n -pin rd_reset_n_IBUF_inst I
netloc rd_reset_n 1 0 3 NJ 43110 NJ 43110 NJ
load net rd_reset_n_IBUF -pin four rd_reset_n_IBUF -pin rd_reset_n_IBUF_inst O -pin three rd_reset_n_IBUF
netloc rd_reset_n_IBUF 1 3 2 790 43170 1100
load net rp0 -attr @rip(#1c1f28) E[0] -pin four E[0] -pin rp_reg[0] CE -pin rp_reg[1] CE -pin rp_reg[2] CE -pin rp_reg[3] CE -pin rp_reg[4] CE -pin rp_reg[5] CE
netloc rp0 1 5 1 1520 43030n
load net rp[0]_i_1_n_0 -pin rp[0]_i_1 O -pin rp_reg[0] D
netloc rp[0]_i_1_n_0 1 5 1 1560 43110n
load net rp[1] -pin rp[1]_i_1 O -pin rp_reg[1] D
netloc rp[1] 1 5 1 1500 43250n
load net rp[2] -pin rp[2]_i_1 O -pin rp_reg[2] D
netloc rp[2] 1 5 1 N 43420
load net rp[3] -pin rp[3]_i_1 O -pin rp_reg[3] D
netloc rp[3] 1 5 1 1460 43540n
load net rp[4] -pin rp[4]_i_1 O -pin rp_reg[4] D
netloc rp[4] 1 5 1 N 43730
load net rp[5] -pin rp[5]_i_2 O -pin rp_reg[5] D
netloc rp[5] 1 5 1 NJ 43880
load net rp_reg_n_0_[0] -attr @rip(#1c1f28) 0 -pin dout[0]_i_14 I4 -pin dout[0]_i_15 I4 -pin dout[0]_i_16 I4 -pin dout[0]_i_17 I4 -pin dout[0]_i_18 I4 -pin dout[0]_i_19 I4 -pin dout[0]_i_20 I4 -pin dout[0]_i_21 I4 -pin dout[0]_i_22 I4 -pin dout[0]_i_23 I4 -pin dout[0]_i_24 I4 -pin dout[0]_i_25 I4 -pin dout[0]_i_26 I4 -pin dout[0]_i_27 I4 -pin dout[0]_i_28 I4 -pin dout[0]_i_29 I4 -pin dout[1]_i_14 I4 -pin dout[1]_i_15 I4 -pin dout[1]_i_16 I4 -pin dout[1]_i_17 I4 -pin dout[1]_i_18 I4 -pin dout[1]_i_19 I4 -pin dout[1]_i_20 I4 -pin dout[1]_i_21 I4 -pin dout[1]_i_22 I4 -pin dout[1]_i_23 I4 -pin dout[1]_i_24 I4 -pin dout[1]_i_25 I4 -pin dout[1]_i_26 I4 -pin dout[1]_i_27 I4 -pin dout[1]_i_28 I4 -pin dout[1]_i_29 I4 -pin dout[2]_i_14 I4 -pin dout[2]_i_15 I4 -pin dout[2]_i_16 I4 -pin dout[2]_i_17 I4 -pin dout[2]_i_18 I4 -pin dout[2]_i_19 I4 -pin dout[2]_i_20 I4 -pin dout[2]_i_21 I4 -pin dout[2]_i_22 I4 -pin dout[2]_i_23 I4 -pin dout[2]_i_24 I4 -pin dout[2]_i_25 I4 -pin dout[2]_i_26 I4 -pin dout[2]_i_27 I4 -pin dout[2]_i_28 I4 -pin dout[2]_i_29 I4 -pin dout[3]_i_14 I4 -pin dout[3]_i_15 I4 -pin dout[3]_i_16 I4 -pin dout[3]_i_17 I4 -pin dout[3]_i_18 I4 -pin dout[3]_i_19 I4 -pin dout[3]_i_20 I4 -pin dout[3]_i_21 I4 -pin dout[3]_i_22 I4 -pin dout[3]_i_23 I4 -pin dout[3]_i_24 I4 -pin dout[3]_i_25 I4 -pin dout[3]_i_26 I4 -pin dout[3]_i_27 I4 -pin dout[3]_i_28 I4 -pin dout[3]_i_29 I4 -pin dout[4]_i_14 I4 -pin dout[4]_i_15 I4 -pin dout[4]_i_16 I4 -pin dout[4]_i_17 I4 -pin dout[4]_i_18 I4 -pin dout[4]_i_19 I4 -pin dout[4]_i_20 I4 -pin dout[4]_i_21 I4 -pin dout[4]_i_22 I4 -pin dout[4]_i_23 I4 -pin dout[4]_i_24 I4 -pin dout[4]_i_25 I4 -pin dout[4]_i_26 I4 -pin dout[4]_i_27 I4 -pin dout[4]_i_28 I4 -pin dout[4]_i_29 I4 -pin dout[5]_i_14 I4 -pin dout[5]_i_15 I4 -pin dout[5]_i_16 I4 -pin dout[5]_i_17 I4 -pin dout[5]_i_18 I4 -pin dout[5]_i_19 I4 -pin dout[5]_i_20 I4 -pin dout[5]_i_21 I4 -pin dout[5]_i_22 I4 -pin dout[5]_i_23 I4 -pin dout[5]_i_24 I4 -pin dout[5]_i_25 I4 -pin dout[5]_i_26 I4 -pin dout[5]_i_27 I4 -pin dout[5]_i_28 I4 -pin dout[5]_i_29 I4 -pin dout[6]_i_14 I4 -pin dout[6]_i_15 I4 -pin dout[6]_i_16 I4 -pin dout[6]_i_17 I4 -pin dout[6]_i_18 I4 -pin dout[6]_i_19 I4 -pin dout[6]_i_20 I4 -pin dout[6]_i_21 I4 -pin dout[6]_i_22 I4 -pin dout[6]_i_23 I4 -pin dout[6]_i_24 I4 -pin dout[6]_i_25 I4 -pin dout[6]_i_26 I4 -pin dout[6]_i_27 I4 -pin dout[6]_i_28 I4 -pin dout[6]_i_29 I4 -pin dout[7]_i_15 I4 -pin dout[7]_i_16 I4 -pin dout[7]_i_17 I4 -pin dout[7]_i_18 I4 -pin dout[7]_i_19 I4 -pin dout[7]_i_20 I4 -pin dout[7]_i_21 I4 -pin dout[7]_i_22 I4 -pin dout[7]_i_23 I4 -pin dout[7]_i_24 I4 -pin dout[7]_i_25 I4 -pin dout[7]_i_26 I4 -pin dout[7]_i_27 I4 -pin dout[7]_i_28 I4 -pin dout[7]_i_29 I4 -pin dout[7]_i_30 I4 -pin four Q[0] -pin one q_reg[5]_0[0] -pin rp[0]_i_1 I0 -pin rp[1]_i_1 I0 -pin rp[2]_i_1 I1 -pin rp[3]_i_1 I2 -pin rp[4]_i_1 I2 -pin rp[5]_i_2 I2 -pin rp_reg[0] Q
load net rp_reg_n_0_[1] -attr @rip(#1c1f28) 1 -pin dout[0]_i_14 I2 -pin dout[0]_i_15 I2 -pin dout[0]_i_16 I2 -pin dout[0]_i_17 I2 -pin dout[0]_i_18 I2 -pin dout[0]_i_19 I2 -pin dout[0]_i_20 I2 -pin dout[0]_i_21 I2 -pin dout[0]_i_22 I2 -pin dout[0]_i_23 I2 -pin dout[0]_i_24 I2 -pin dout[0]_i_25 I2 -pin dout[0]_i_26 I2 -pin dout[0]_i_27 I2 -pin dout[0]_i_28 I2 -pin dout[0]_i_29 I2 -pin dout[1]_i_14 I2 -pin dout[1]_i_15 I2 -pin dout[1]_i_16 I2 -pin dout[1]_i_17 I2 -pin dout[1]_i_18 I2 -pin dout[1]_i_19 I2 -pin dout[1]_i_20 I2 -pin dout[1]_i_21 I2 -pin dout[1]_i_22 I2 -pin dout[1]_i_23 I2 -pin dout[1]_i_24 I2 -pin dout[1]_i_25 I2 -pin dout[1]_i_26 I2 -pin dout[1]_i_27 I2 -pin dout[1]_i_28 I2 -pin dout[1]_i_29 I2 -pin dout[2]_i_14 I2 -pin dout[2]_i_15 I2 -pin dout[2]_i_16 I2 -pin dout[2]_i_17 I2 -pin dout[2]_i_18 I2 -pin dout[2]_i_19 I2 -pin dout[2]_i_20 I2 -pin dout[2]_i_21 I2 -pin dout[2]_i_22 I2 -pin dout[2]_i_23 I2 -pin dout[2]_i_24 I2 -pin dout[2]_i_25 I2 -pin dout[2]_i_26 I2 -pin dout[2]_i_27 I2 -pin dout[2]_i_28 I2 -pin dout[2]_i_29 I2 -pin dout[3]_i_14 I2 -pin dout[3]_i_15 I2 -pin dout[3]_i_16 I2 -pin dout[3]_i_17 I2 -pin dout[3]_i_18 I2 -pin dout[3]_i_19 I2 -pin dout[3]_i_20 I2 -pin dout[3]_i_21 I2 -pin dout[3]_i_22 I2 -pin dout[3]_i_23 I2 -pin dout[3]_i_24 I2 -pin dout[3]_i_25 I2 -pin dout[3]_i_26 I2 -pin dout[3]_i_27 I2 -pin dout[3]_i_28 I2 -pin dout[3]_i_29 I2 -pin dout[4]_i_14 I2 -pin dout[4]_i_15 I2 -pin dout[4]_i_16 I2 -pin dout[4]_i_17 I2 -pin dout[4]_i_18 I2 -pin dout[4]_i_19 I2 -pin dout[4]_i_20 I2 -pin dout[4]_i_21 I2 -pin dout[4]_i_22 I2 -pin dout[4]_i_23 I2 -pin dout[4]_i_24 I2 -pin dout[4]_i_25 I2 -pin dout[4]_i_26 I2 -pin dout[4]_i_27 I2 -pin dout[4]_i_28 I2 -pin dout[4]_i_29 I2 -pin dout[5]_i_14 I2 -pin dout[5]_i_15 I2 -pin dout[5]_i_16 I2 -pin dout[5]_i_17 I2 -pin dout[5]_i_18 I2 -pin dout[5]_i_19 I2 -pin dout[5]_i_20 I2 -pin dout[5]_i_21 I2 -pin dout[5]_i_22 I2 -pin dout[5]_i_23 I2 -pin dout[5]_i_24 I2 -pin dout[5]_i_25 I2 -pin dout[5]_i_26 I2 -pin dout[5]_i_27 I2 -pin dout[5]_i_28 I2 -pin dout[5]_i_29 I2 -pin dout[6]_i_14 I2 -pin dout[6]_i_15 I2 -pin dout[6]_i_16 I2 -pin dout[6]_i_17 I2 -pin dout[6]_i_18 I2 -pin dout[6]_i_19 I2 -pin dout[6]_i_20 I2 -pin dout[6]_i_21 I2 -pin dout[6]_i_22 I2 -pin dout[6]_i_23 I2 -pin dout[6]_i_24 I2 -pin dout[6]_i_25 I2 -pin dout[6]_i_26 I2 -pin dout[6]_i_27 I2 -pin dout[6]_i_28 I2 -pin dout[6]_i_29 I2 -pin dout[7]_i_15 I2 -pin dout[7]_i_16 I2 -pin dout[7]_i_17 I2 -pin dout[7]_i_18 I2 -pin dout[7]_i_19 I2 -pin dout[7]_i_20 I2 -pin dout[7]_i_21 I2 -pin dout[7]_i_22 I2 -pin dout[7]_i_23 I2 -pin dout[7]_i_24 I2 -pin dout[7]_i_25 I2 -pin dout[7]_i_26 I2 -pin dout[7]_i_27 I2 -pin dout[7]_i_28 I2 -pin dout[7]_i_29 I2 -pin dout[7]_i_30 I2 -pin four Q[1] -pin one q_reg[5]_0[1] -pin rp[1]_i_1 I1 -pin rp[2]_i_1 I2 -pin rp[3]_i_1 I3 -pin rp[4]_i_1 I3 -pin rp[5]_i_2 I3 -pin rp_reg[1] Q
load net rp_reg_n_0_[2] -attr @rip(#1c1f28) 2 -pin dout_reg[0]_i_10 S -pin dout_reg[0]_i_11 S -pin dout_reg[0]_i_12 S -pin dout_reg[0]_i_13 S -pin dout_reg[0]_i_6 S -pin dout_reg[0]_i_7 S -pin dout_reg[0]_i_8 S -pin dout_reg[0]_i_9 S -pin dout_reg[1]_i_10 S -pin dout_reg[1]_i_11 S -pin dout_reg[1]_i_12 S -pin dout_reg[1]_i_13 S -pin dout_reg[1]_i_6 S -pin dout_reg[1]_i_7 S -pin dout_reg[1]_i_8 S -pin dout_reg[1]_i_9 S -pin dout_reg[2]_i_10 S -pin dout_reg[2]_i_11 S -pin dout_reg[2]_i_12 S -pin dout_reg[2]_i_13 S -pin dout_reg[2]_i_6 S -pin dout_reg[2]_i_7 S -pin dout_reg[2]_i_8 S -pin dout_reg[2]_i_9 S -pin dout_reg[3]_i_10 S -pin dout_reg[3]_i_11 S -pin dout_reg[3]_i_12 S -pin dout_reg[3]_i_13 S -pin dout_reg[3]_i_6 S -pin dout_reg[3]_i_7 S -pin dout_reg[3]_i_8 S -pin dout_reg[3]_i_9 S -pin dout_reg[4]_i_10 S -pin dout_reg[4]_i_11 S -pin dout_reg[4]_i_12 S -pin dout_reg[4]_i_13 S -pin dout_reg[4]_i_6 S -pin dout_reg[4]_i_7 S -pin dout_reg[4]_i_8 S -pin dout_reg[4]_i_9 S -pin dout_reg[5]_i_10 S -pin dout_reg[5]_i_11 S -pin dout_reg[5]_i_12 S -pin dout_reg[5]_i_13 S -pin dout_reg[5]_i_6 S -pin dout_reg[5]_i_7 S -pin dout_reg[5]_i_8 S -pin dout_reg[5]_i_9 S -pin dout_reg[6]_i_10 S -pin dout_reg[6]_i_11 S -pin dout_reg[6]_i_12 S -pin dout_reg[6]_i_13 S -pin dout_reg[6]_i_6 S -pin dout_reg[6]_i_7 S -pin dout_reg[6]_i_8 S -pin dout_reg[6]_i_9 S -pin dout_reg[7]_i_10 S -pin dout_reg[7]_i_11 S -pin dout_reg[7]_i_12 S -pin dout_reg[7]_i_13 S -pin dout_reg[7]_i_14 S -pin dout_reg[7]_i_7 S -pin dout_reg[7]_i_8 S -pin dout_reg[7]_i_9 S -pin four Q[2] -pin one q_reg[5]_0[2] -pin rp[2]_i_1 I0 -pin rp[3]_i_1 I0 -pin rp[4]_i_1 I0 -pin rp[5]_i_2 I0 -pin rp_reg[2] Q
load net rp_reg_n_0_[3] -attr @rip(#1c1f28) 3 -pin dout_reg[0]_i_2 S -pin dout_reg[0]_i_3 S -pin dout_reg[0]_i_4 S -pin dout_reg[0]_i_5 S -pin dout_reg[1]_i_2 S -pin dout_reg[1]_i_3 S -pin dout_reg[1]_i_4 S -pin dout_reg[1]_i_5 S -pin dout_reg[2]_i_2 S -pin dout_reg[2]_i_3 S -pin dout_reg[2]_i_4 S -pin dout_reg[2]_i_5 S -pin dout_reg[3]_i_2 S -pin dout_reg[3]_i_3 S -pin dout_reg[3]_i_4 S -pin dout_reg[3]_i_5 S -pin dout_reg[4]_i_2 S -pin dout_reg[4]_i_3 S -pin dout_reg[4]_i_4 S -pin dout_reg[4]_i_5 S -pin dout_reg[5]_i_2 S -pin dout_reg[5]_i_3 S -pin dout_reg[5]_i_4 S -pin dout_reg[5]_i_5 S -pin dout_reg[6]_i_2 S -pin dout_reg[6]_i_3 S -pin dout_reg[6]_i_4 S -pin dout_reg[6]_i_5 S -pin dout_reg[7]_i_3 S -pin dout_reg[7]_i_4 S -pin dout_reg[7]_i_5 S -pin dout_reg[7]_i_6 S -pin four Q[3] -pin one q_reg[5]_0[3] -pin rp[3]_i_1 I1 -pin rp[4]_i_1 I1 -pin rp[5]_i_2 I1 -pin rp_reg[3] Q
load net rp_reg_n_0_[4] -attr @rip(#1c1f28) 4 -pin dout[0]_i_1 I4 -pin dout[1]_i_1 I4 -pin dout[2]_i_1 I4 -pin dout[3]_i_1 I4 -pin dout[4]_i_1 I4 -pin dout[5]_i_1 I4 -pin dout[6]_i_1 I4 -pin dout[7]_i_2 I4 -pin four Q[4] -pin one q_reg[5]_0[4] -pin rp[4]_i_1 I4 -pin rp[5]_i_2 I4 -pin rp_reg[4] Q
load net rp_reg_n_0_[5] -attr @rip(#1c1f28) 5 -pin dout[0]_i_1 I2 -pin dout[1]_i_1 I2 -pin dout[2]_i_1 I2 -pin dout[3]_i_1 I2 -pin dout[4]_i_1 I2 -pin dout[5]_i_1 I2 -pin dout[6]_i_1 I2 -pin dout[7]_i_2 I2 -pin four Q[5] -pin one q_reg[5]_0[5] -pin rp[5]_i_2 I5 -pin rp_reg[5] Q
load net three_n_0 -pin four q_reg[0]_0 -pin rp_reg[0] CLR -pin rp_reg[1] CLR -pin rp_reg[2] CLR -pin rp_reg[3] CLR -pin rp_reg[4] CLR -pin rp_reg[5] CLR -pin three rd_reset_n
netloc three_n_0 1 4 2 1100 42950 1540
load net three_n_1 -attr @rip(#1c1f28) Q[5] -pin four q_reg[5]_0[5] -pin three Q[5]
load net three_n_2 -attr @rip(#1c1f28) Q[4] -pin four q_reg[5]_0[4] -pin three Q[4]
load net three_n_3 -attr @rip(#1c1f28) Q[3] -pin four q_reg[5]_0[3] -pin three Q[3]
load net three_n_4 -attr @rip(#1c1f28) Q[2] -pin four q_reg[5]_0[2] -pin three Q[2]
load net three_n_5 -attr @rip(#1c1f28) Q[1] -pin four q_reg[5]_0[1] -pin three Q[1]
load net three_n_6 -attr @rip(#1c1f28) Q[0] -pin four q_reg[5]_0[0] -pin three Q[0]
load net two_n_0 -attr @rip(#1c1f28) E[0] -pin mem_reg[55][0] CE -pin mem_reg[55][1] CE -pin mem_reg[55][2] CE -pin mem_reg[55][3] CE -pin mem_reg[55][4] CE -pin mem_reg[55][5] CE -pin mem_reg[55][6] CE -pin mem_reg[55][7] CE -pin two E[0]
netloc two_n_0 1 8 1 3320 42160n
load net two_n_10 -attr @rip(#1c1f28) wp_reg[0][0] -pin mem_reg[6][0] CE -pin mem_reg[6][1] CE -pin mem_reg[6][2] CE -pin mem_reg[6][3] CE -pin mem_reg[6][4] CE -pin mem_reg[6][5] CE -pin mem_reg[6][6] CE -pin mem_reg[6][7] CE -pin two wp_reg[0][0]
netloc two_n_10 1 8 1 3040 42200n
load net two_n_11 -attr @rip(#1c1f28) wp_reg[1]_1[0] -pin mem_reg[7][0] CE -pin mem_reg[7][1] CE -pin mem_reg[7][2] CE -pin mem_reg[7][3] CE -pin mem_reg[7][4] CE -pin mem_reg[7][5] CE -pin mem_reg[7][6] CE -pin mem_reg[7][7] CE -pin two wp_reg[1]_1[0]
netloc two_n_11 1 8 1 2980 42360n
load net two_n_12 -attr @rip(#1c1f28) wp_reg[5]_3[0] -pin mem_reg[8][0] CE -pin mem_reg[8][1] CE -pin mem_reg[8][2] CE -pin mem_reg[8][3] CE -pin mem_reg[8][4] CE -pin mem_reg[8][5] CE -pin mem_reg[8][6] CE -pin mem_reg[8][7] CE -pin two wp_reg[5]_3[0]
netloc two_n_12 1 8 1 2740 43320n
load net two_n_13 -attr @rip(#1c1f28) wp_reg[2][0] -pin mem_reg[9][0] CE -pin mem_reg[9][1] CE -pin mem_reg[9][2] CE -pin mem_reg[9][3] CE -pin mem_reg[9][4] CE -pin mem_reg[9][5] CE -pin mem_reg[9][6] CE -pin mem_reg[9][7] CE -pin two wp_reg[2][0]
netloc two_n_13 1 8 1 2760 42480n
load net two_n_14 -attr @rip(#1c1f28) wp_reg[5]_4[0] -pin mem_reg[10][0] CE -pin mem_reg[10][1] CE -pin mem_reg[10][2] CE -pin mem_reg[10][3] CE -pin mem_reg[10][4] CE -pin mem_reg[10][5] CE -pin mem_reg[10][6] CE -pin mem_reg[10][7] CE -pin two wp_reg[5]_4[0]
netloc two_n_14 1 8 1 3100 40720n
load net two_n_15 -attr @rip(#1c1f28) wp_reg[5]_5[0] -pin mem_reg[11][0] CE -pin mem_reg[11][1] CE -pin mem_reg[11][2] CE -pin mem_reg[11][3] CE -pin mem_reg[11][4] CE -pin mem_reg[11][5] CE -pin mem_reg[11][6] CE -pin mem_reg[11][7] CE -pin two wp_reg[5]_5[0]
netloc two_n_15 1 8 1 3140 40870n
load net two_n_16 -attr @rip(#1c1f28) wp_reg[2]_0[0] -pin mem_reg[12][0] CE -pin mem_reg[12][1] CE -pin mem_reg[12][2] CE -pin mem_reg[12][3] CE -pin mem_reg[12][4] CE -pin mem_reg[12][5] CE -pin mem_reg[12][6] CE -pin mem_reg[12][7] CE -pin two wp_reg[2]_0[0]
netloc two_n_16 1 8 1 2500 220n
load net two_n_17 -attr @rip(#1c1f28) wp_reg[1]_2[0] -pin mem_reg[13][0] CE -pin mem_reg[13][1] CE -pin mem_reg[13][2] CE -pin mem_reg[13][3] CE -pin mem_reg[13][4] CE -pin mem_reg[13][5] CE -pin mem_reg[13][6] CE -pin mem_reg[13][7] CE -pin two wp_reg[1]_2[0]
netloc two_n_17 1 8 1 2600 1870n
load net two_n_18 -attr @rip(#1c1f28) wp_reg[0]_0[0] -pin mem_reg[14][0] CE -pin mem_reg[14][1] CE -pin mem_reg[14][2] CE -pin mem_reg[14][3] CE -pin mem_reg[14][4] CE -pin mem_reg[14][5] CE -pin mem_reg[14][6] CE -pin mem_reg[14][7] CE -pin two wp_reg[0]_0[0]
netloc two_n_18 1 8 1 2580 3070n
load net two_n_19 -attr @rip(#1c1f28) wp_reg[4][0] -pin mem_reg[15][0] CE -pin mem_reg[15][1] CE -pin mem_reg[15][2] CE -pin mem_reg[15][3] CE -pin mem_reg[15][4] CE -pin mem_reg[15][5] CE -pin mem_reg[15][6] CE -pin mem_reg[15][7] CE -pin two wp_reg[4][0]
netloc two_n_19 1 8 1 3380 31720n
load net two_n_2 -attr @rip(#1c1f28) wp_reg[3][0] -pin mem_reg[39][0] CE -pin mem_reg[39][1] CE -pin mem_reg[39][2] CE -pin mem_reg[39][3] CE -pin mem_reg[39][4] CE -pin mem_reg[39][5] CE -pin mem_reg[39][6] CE -pin mem_reg[39][7] CE -pin two wp_reg[3][0]
netloc two_n_2 1 8 1 2680 23320n
load net two_n_20 -attr @rip(#1c1f28) wp_reg[3]_1[0] -pin mem_reg[16][0] CE -pin mem_reg[16][1] CE -pin mem_reg[16][2] CE -pin mem_reg[16][3] CE -pin mem_reg[16][4] CE -pin mem_reg[16][5] CE -pin mem_reg[16][6] CE -pin mem_reg[16][7] CE -pin two wp_reg[3]_1[0]
netloc two_n_20 1 8 1 2920 4870n
load net two_n_21 -attr @rip(#1c1f28) wp_reg[2]_1[0] -pin mem_reg[17][0] CE -pin mem_reg[17][1] CE -pin mem_reg[17][2] CE -pin mem_reg[17][3] CE -pin mem_reg[17][4] CE -pin mem_reg[17][5] CE -pin mem_reg[17][6] CE -pin mem_reg[17][7] CE -pin two wp_reg[2]_1[0]
netloc two_n_21 1 8 1 2780 6070n
load net two_n_22 -attr @rip(#1c1f28) wp_reg[3]_2[0] -pin mem_reg[18][0] CE -pin mem_reg[18][1] CE -pin mem_reg[18][2] CE -pin mem_reg[18][3] CE -pin mem_reg[18][4] CE -pin mem_reg[18][5] CE -pin mem_reg[18][6] CE -pin mem_reg[18][7] CE -pin two wp_reg[3]_2[0]
netloc two_n_22 1 8 1 3000 7270n
load net two_n_23 -attr @rip(#1c1f28) wp_reg[2]_2[0] -pin mem_reg[19][0] CE -pin mem_reg[19][1] CE -pin mem_reg[19][2] CE -pin mem_reg[19][3] CE -pin mem_reg[19][4] CE -pin mem_reg[19][5] CE -pin mem_reg[19][6] CE -pin mem_reg[19][7] CE -pin two wp_reg[2]_2[0]
netloc two_n_23 1 8 1 2840 8470n
load net two_n_24 -attr @rip(#1c1f28) wp_reg[4]_0[0] -pin mem_reg[20][0] CE -pin mem_reg[20][1] CE -pin mem_reg[20][2] CE -pin mem_reg[20][3] CE -pin mem_reg[20][4] CE -pin mem_reg[20][5] CE -pin mem_reg[20][6] CE -pin mem_reg[20][7] CE -pin two wp_reg[4]_0[0]
netloc two_n_24 1 8 1 3360 28420n
load net two_n_25 -attr @rip(#1c1f28) wp_reg[1]_3[0] -pin mem_reg[21][0] CE -pin mem_reg[21][1] CE -pin mem_reg[21][2] CE -pin mem_reg[21][3] CE -pin mem_reg[21][4] CE -pin mem_reg[21][5] CE -pin mem_reg[21][6] CE -pin mem_reg[21][7] CE -pin two wp_reg[1]_3[0]
netloc two_n_25 1 8 1 2800 9670n
load net two_n_26 -attr @rip(#1c1f28) wp_reg[4]_1[0] -pin mem_reg[22][0] CE -pin mem_reg[22][1] CE -pin mem_reg[22][2] CE -pin mem_reg[22][3] CE -pin mem_reg[22][4] CE -pin mem_reg[22][5] CE -pin mem_reg[22][6] CE -pin mem_reg[22][7] CE -pin two wp_reg[4]_1[0]
netloc two_n_26 1 8 1 3420 25720n
load net two_n_27 -attr @rip(#1c1f28) wp_reg[2]_3[0] -pin mem_reg[24][0] CE -pin mem_reg[24][1] CE -pin mem_reg[24][2] CE -pin mem_reg[24][3] CE -pin mem_reg[24][4] CE -pin mem_reg[24][5] CE -pin mem_reg[24][6] CE -pin mem_reg[24][7] CE -pin two wp_reg[2]_3[0]
netloc two_n_27 1 8 1 2520 10870n
load net two_n_28 -attr @rip(#1c1f28) wp_reg[2]_4[0] -pin mem_reg[25][0] CE -pin mem_reg[25][1] CE -pin mem_reg[25][2] CE -pin mem_reg[25][3] CE -pin mem_reg[25][4] CE -pin mem_reg[25][5] CE -pin mem_reg[25][6] CE -pin mem_reg[25][7] CE -pin two wp_reg[2]_4[0]
netloc two_n_28 1 8 1 2940 12070n
load net two_n_29 -attr @rip(#1c1f28) wp_reg[2]_5[0] -pin mem_reg[26][0] CE -pin mem_reg[26][1] CE -pin mem_reg[26][2] CE -pin mem_reg[26][3] CE -pin mem_reg[26][4] CE -pin mem_reg[26][5] CE -pin mem_reg[26][6] CE -pin mem_reg[26][7] CE -pin two wp_reg[2]_5[0]
netloc two_n_29 1 8 1 2960 13270n
load net two_n_3 -attr @rip(#1c1f28) wp_reg[5][0] -pin mem_reg[23][0] CE -pin mem_reg[23][1] CE -pin mem_reg[23][2] CE -pin mem_reg[23][3] CE -pin mem_reg[23][4] CE -pin mem_reg[23][5] CE -pin mem_reg[23][6] CE -pin mem_reg[23][7] CE -pin two wp_reg[5][0]
netloc two_n_3 1 8 1 3560 36520n
load net two_n_30 -attr @rip(#1c1f28) wp_reg[2]_6[0] -pin mem_reg[27][0] CE -pin mem_reg[27][1] CE -pin mem_reg[27][2] CE -pin mem_reg[27][3] CE -pin mem_reg[27][4] CE -pin mem_reg[27][5] CE -pin mem_reg[27][6] CE -pin mem_reg[27][7] CE -pin two wp_reg[2]_6[0]
netloc two_n_30 1 8 1 3020 14470n
load net two_n_31 -attr @rip(#1c1f28) wp_reg[3]_3[0] -pin mem_reg[28][0] CE -pin mem_reg[28][1] CE -pin mem_reg[28][2] CE -pin mem_reg[28][3] CE -pin mem_reg[28][4] CE -pin mem_reg[28][5] CE -pin mem_reg[28][6] CE -pin mem_reg[28][7] CE -pin two wp_reg[3]_3[0]
netloc two_n_31 1 8 1 3260 15670n
load net two_n_32 -attr @rip(#1c1f28) wp_reg[0]_1[0] -pin mem_reg[29][0] CE -pin mem_reg[29][1] CE -pin mem_reg[29][2] CE -pin mem_reg[29][3] CE -pin mem_reg[29][4] CE -pin mem_reg[29][5] CE -pin mem_reg[29][6] CE -pin mem_reg[29][7] CE -pin two wp_reg[0]_1[0]
netloc two_n_32 1 8 1 2820 16870n
load net two_n_33 -attr @rip(#1c1f28) wp_reg[3]_4[0] -pin mem_reg[30][0] CE -pin mem_reg[30][1] CE -pin mem_reg[30][2] CE -pin mem_reg[30][3] CE -pin mem_reg[30][4] CE -pin mem_reg[30][5] CE -pin mem_reg[30][6] CE -pin mem_reg[30][7] CE -pin two wp_reg[3]_4[0]
netloc two_n_33 1 8 1 2640 18070n
load net two_n_34 -attr @rip(#1c1f28) wp_reg[4]_2[0] -pin mem_reg[32][0] CE -pin mem_reg[32][1] CE -pin mem_reg[32][2] CE -pin mem_reg[32][3] CE -pin mem_reg[32][4] CE -pin mem_reg[32][5] CE -pin mem_reg[32][6] CE -pin mem_reg[32][7] CE -pin two wp_reg[4]_2[0]
netloc two_n_34 1 8 1 2560 33370n
load net two_n_35 -attr @rip(#1c1f28) wp_reg[3]_5[0] -pin mem_reg[33][0] CE -pin mem_reg[33][1] CE -pin mem_reg[33][2] CE -pin mem_reg[33][3] CE -pin mem_reg[33][4] CE -pin mem_reg[33][5] CE -pin mem_reg[33][6] CE -pin mem_reg[33][7] CE -pin two wp_reg[3]_5[0]
netloc two_n_35 1 8 1 2700 20470n
load net two_n_36 -attr @rip(#1c1f28) wp_reg[3]_6[0] -pin mem_reg[34][0] CE -pin mem_reg[34][1] CE -pin mem_reg[34][2] CE -pin mem_reg[34][3] CE -pin mem_reg[34][4] CE -pin mem_reg[34][5] CE -pin mem_reg[34][6] CE -pin mem_reg[34][7] CE -pin two wp_reg[3]_6[0]
netloc two_n_36 1 8 1 2740 29470n
load net two_n_37 -attr @rip(#1c1f28) wp_reg[4]_3[0] -pin mem_reg[35][0] CE -pin mem_reg[35][1] CE -pin mem_reg[35][2] CE -pin mem_reg[35][3] CE -pin mem_reg[35][4] CE -pin mem_reg[35][5] CE -pin mem_reg[35][6] CE -pin mem_reg[35][7] CE -pin two wp_reg[4]_3[0]
netloc two_n_37 1 8 1 3500 34420n
load net two_n_38 -attr @rip(#1c1f28) wp_reg[3]_7[0] -pin mem_reg[36][0] CE -pin mem_reg[36][1] CE -pin mem_reg[36][2] CE -pin mem_reg[36][3] CE -pin mem_reg[36][4] CE -pin mem_reg[36][5] CE -pin mem_reg[36][6] CE -pin mem_reg[36][7] CE -pin two wp_reg[3]_7[0]
netloc two_n_38 1 8 1 3460 27370n
load net two_n_39 -attr @rip(#1c1f28) wp_reg[1]_4[0] -pin mem_reg[37][0] CE -pin mem_reg[37][1] CE -pin mem_reg[37][2] CE -pin mem_reg[37][3] CE -pin mem_reg[37][4] CE -pin mem_reg[37][5] CE -pin mem_reg[37][6] CE -pin mem_reg[37][7] CE -pin two wp_reg[1]_4[0]
netloc two_n_39 1 8 1 2760 20920n
load net two_n_4 -attr @rip(#1c1f28) wp_reg[5]_0[0] -pin mem_reg[0][0] CE -pin mem_reg[0][1] CE -pin mem_reg[0][2] CE -pin mem_reg[0][3] CE -pin mem_reg[0][4] CE -pin mem_reg[0][5] CE -pin mem_reg[0][6] CE -pin mem_reg[0][7] CE -pin two wp_reg[5]_0[0]
netloc two_n_4 1 8 1 3540 40270n
load net two_n_40 -attr @rip(#1c1f28) wp_reg[0]_2[0] -pin mem_reg[38][0] CE -pin mem_reg[38][1] CE -pin mem_reg[38][2] CE -pin mem_reg[38][3] CE -pin mem_reg[38][4] CE -pin mem_reg[38][5] CE -pin mem_reg[38][6] CE -pin mem_reg[38][7] CE -pin two wp_reg[0]_2[0]
netloc two_n_40 1 8 1 2900 22120n
load net two_n_41 -attr @rip(#1c1f28) wp_reg[5]_6[0] -pin mem_reg[40][0] CE -pin mem_reg[40][1] CE -pin mem_reg[40][2] CE -pin mem_reg[40][3] CE -pin mem_reg[40][4] CE -pin mem_reg[40][5] CE -pin mem_reg[40][6] CE -pin mem_reg[40][7] CE -pin two wp_reg[5]_6[0]
netloc two_n_41 1 8 1 3480 35470n
load net two_n_42 -attr @rip(#1c1f28) wp_reg[2]_7[0] -pin mem_reg[41][0] CE -pin mem_reg[41][1] CE -pin mem_reg[41][2] CE -pin mem_reg[41][3] CE -pin mem_reg[41][4] CE -pin mem_reg[41][5] CE -pin mem_reg[41][6] CE -pin mem_reg[41][7] CE -pin two wp_reg[2]_7[0]
netloc two_n_42 1 8 1 3280 24520n
load net two_n_43 -attr @rip(#1c1f28) wp_reg[5]_7[0] -pin mem_reg[42][0] CE -pin mem_reg[42][1] CE -pin mem_reg[42][2] CE -pin mem_reg[42][3] CE -pin mem_reg[42][4] CE -pin mem_reg[42][5] CE -pin mem_reg[42][6] CE -pin mem_reg[42][7] CE -pin two wp_reg[5]_7[0]
netloc two_n_43 1 8 1 3520 37570n
load net two_n_44 -attr @rip(#1c1f28) wp_reg[4]_4[0] -pin mem_reg[43][0] CE -pin mem_reg[43][1] CE -pin mem_reg[43][2] CE -pin mem_reg[43][3] CE -pin mem_reg[43][4] CE -pin mem_reg[43][5] CE -pin mem_reg[43][6] CE -pin mem_reg[43][7] CE -pin two wp_reg[4]_4[0]
netloc two_n_44 1 8 1 2540 38620n
load net two_n_45 -attr @rip(#1c1f28) wp_reg[3]_8[0] -pin mem_reg[44][0] CE -pin mem_reg[44][1] CE -pin mem_reg[44][2] CE -pin mem_reg[44][3] CE -pin mem_reg[44][4] CE -pin mem_reg[44][5] CE -pin mem_reg[44][6] CE -pin mem_reg[44][7] CE -pin two wp_reg[3]_8[0]
netloc two_n_45 1 8 1 3600 38920n
load net two_n_46 -attr @rip(#1c1f28) wp_reg[3]_9[0] -pin mem_reg[45][0] CE -pin mem_reg[45][1] CE -pin mem_reg[45][2] CE -pin mem_reg[45][3] CE -pin mem_reg[45][4] CE -pin mem_reg[45][5] CE -pin mem_reg[45][6] CE -pin mem_reg[45][7] CE -pin two wp_reg[3]_9[0]
netloc two_n_46 1 8 1 3440 39220n
load net two_n_47 -attr @rip(#1c1f28) wp_reg[2]_8[0] -pin mem_reg[46][0] CE -pin mem_reg[46][1] CE -pin mem_reg[46][2] CE -pin mem_reg[46][3] CE -pin mem_reg[46][4] CE -pin mem_reg[46][5] CE -pin mem_reg[46][6] CE -pin mem_reg[46][7] CE -pin two wp_reg[2]_8[0]
netloc two_n_47 1 8 1 3340 42660n
load net two_n_48 -attr @rip(#1c1f28) wp_reg[5]_8[0] -pin mem_reg[47][0] CE -pin mem_reg[47][1] CE -pin mem_reg[47][2] CE -pin mem_reg[47][3] CE -pin mem_reg[47][4] CE -pin mem_reg[47][5] CE -pin mem_reg[47][6] CE -pin mem_reg[47][7] CE -pin two wp_reg[5]_8[0]
netloc two_n_48 1 8 1 3000 43420n
load net two_n_49 -attr @rip(#1c1f28) wp_reg[3]_10[0] -pin mem_reg[48][0] CE -pin mem_reg[48][1] CE -pin mem_reg[48][2] CE -pin mem_reg[48][3] CE -pin mem_reg[48][4] CE -pin mem_reg[48][5] CE -pin mem_reg[48][6] CE -pin mem_reg[48][7] CE -pin two wp_reg[3]_10[0]
netloc two_n_49 1 8 1 3280 42980n
load net two_n_5 -attr @rip(#1c1f28) wp_reg[3]_0[0] -pin mem_reg[1][0] CE -pin mem_reg[1][1] CE -pin mem_reg[1][2] CE -pin mem_reg[1][3] CE -pin mem_reg[1][4] CE -pin mem_reg[1][5] CE -pin mem_reg[1][6] CE -pin mem_reg[1][7] CE -pin two wp_reg[3]_0[0]
netloc two_n_5 1 8 1 2620 70n
load net two_n_50 -attr @rip(#1c1f28) wp_reg[3]_11[0] -pin mem_reg[49][0] CE -pin mem_reg[49][1] CE -pin mem_reg[49][2] CE -pin mem_reg[49][3] CE -pin mem_reg[49][4] CE -pin mem_reg[49][5] CE -pin mem_reg[49][6] CE -pin mem_reg[49][7] CE -pin two wp_reg[3]_11[0]
netloc two_n_50 1 8 1 2620 43000n
load net two_n_51 -attr @rip(#1c1f28) wp_reg[4]_5[0] -pin mem_reg[50][0] CE -pin mem_reg[50][1] CE -pin mem_reg[50][2] CE -pin mem_reg[50][3] CE -pin mem_reg[50][4] CE -pin mem_reg[50][5] CE -pin mem_reg[50][6] CE -pin mem_reg[50][7] CE -pin two wp_reg[4]_5[0]
netloc two_n_51 1 8 1 2920 43220n
load net two_n_52 -attr @rip(#1c1f28) wp_reg[3]_12[0] -pin mem_reg[51][0] CE -pin mem_reg[51][1] CE -pin mem_reg[51][2] CE -pin mem_reg[51][3] CE -pin mem_reg[51][4] CE -pin mem_reg[51][5] CE -pin mem_reg[51][6] CE -pin mem_reg[51][7] CE -pin two wp_reg[3]_12[0]
netloc two_n_52 1 8 1 2640 43020n
load net two_n_53 -attr @rip(#1c1f28) wp_reg[1]_5[0] -pin mem_reg[52][0] CE -pin mem_reg[52][1] CE -pin mem_reg[52][2] CE -pin mem_reg[52][3] CE -pin mem_reg[52][4] CE -pin mem_reg[52][5] CE -pin mem_reg[52][6] CE -pin mem_reg[52][7] CE -pin two wp_reg[1]_5[0]
netloc two_n_53 1 8 1 2900 42440n
load net two_n_54 -attr @rip(#1c1f28) wp_reg[0]_3[0] -pin mem_reg[53][0] CE -pin mem_reg[53][1] CE -pin mem_reg[53][2] CE -pin mem_reg[53][3] CE -pin mem_reg[53][4] CE -pin mem_reg[53][5] CE -pin mem_reg[53][6] CE -pin mem_reg[53][7] CE -pin two wp_reg[0]_3[0]
netloc two_n_54 1 8 1 2580 42280n
load net two_n_55 -attr @rip(#1c1f28) wp_reg[1]_6[0] -pin mem_reg[54][0] CE -pin mem_reg[54][1] CE -pin mem_reg[54][2] CE -pin mem_reg[54][3] CE -pin mem_reg[54][4] CE -pin mem_reg[54][5] CE -pin mem_reg[54][6] CE -pin mem_reg[54][7] CE -pin two wp_reg[1]_6[0]
netloc two_n_55 1 8 1 2600 42460n
load net two_n_56 -attr @rip(#1c1f28) wp_reg[2]_9[0] -pin mem_reg[56][0] CE -pin mem_reg[56][1] CE -pin mem_reg[56][2] CE -pin mem_reg[56][3] CE -pin mem_reg[56][4] CE -pin mem_reg[56][5] CE -pin mem_reg[56][6] CE -pin mem_reg[56][7] CE -pin two wp_reg[2]_9[0]
netloc two_n_56 1 8 1 3020 42680n
load net two_n_57 -attr @rip(#1c1f28) wp_reg[2]_10[0] -pin mem_reg[57][0] CE -pin mem_reg[57][1] CE -pin mem_reg[57][2] CE -pin mem_reg[57][3] CE -pin mem_reg[57][4] CE -pin mem_reg[57][5] CE -pin mem_reg[57][6] CE -pin mem_reg[57][7] CE -pin two wp_reg[2]_10[0]
netloc two_n_57 1 8 1 2520 42700n
load net two_n_58 -attr @rip(#1c1f28) wp_reg[3]_13[0] -pin mem_reg[58][0] CE -pin mem_reg[58][1] CE -pin mem_reg[58][2] CE -pin mem_reg[58][3] CE -pin mem_reg[58][4] CE -pin mem_reg[58][5] CE -pin mem_reg[58][6] CE -pin mem_reg[58][7] CE -pin two wp_reg[3]_13[0]
netloc two_n_58 1 8 1 2820 43040n
load net two_n_59 -attr @rip(#1c1f28) wp_reg[3]_14[0] -pin mem_reg[59][0] CE -pin mem_reg[59][1] CE -pin mem_reg[59][2] CE -pin mem_reg[59][3] CE -pin mem_reg[59][4] CE -pin mem_reg[59][5] CE -pin mem_reg[59][6] CE -pin mem_reg[59][7] CE -pin two wp_reg[3]_14[0]
netloc two_n_59 1 8 1 2800 43060n
load net two_n_6 -attr @rip(#1c1f28) wp_reg[5]_1[0] -pin mem_reg[2][0] CE -pin mem_reg[2][1] CE -pin mem_reg[2][2] CE -pin mem_reg[2][3] CE -pin mem_reg[2][4] CE -pin mem_reg[2][5] CE -pin mem_reg[2][6] CE -pin mem_reg[2][7] CE -pin two wp_reg[5]_1[0]
netloc two_n_6 1 8 1 3580 40420n
load net two_n_60 -attr @rip(#1c1f28) wp_reg[2]_11[0] -pin mem_reg[60][0] CE -pin mem_reg[60][1] CE -pin mem_reg[60][2] CE -pin mem_reg[60][3] CE -pin mem_reg[60][4] CE -pin mem_reg[60][5] CE -pin mem_reg[60][6] CE -pin mem_reg[60][7] CE -pin two wp_reg[2]_11[0]
netloc two_n_60 1 8 1 2500 42720n
load net two_n_61 -attr @rip(#1c1f28) wp_reg[3]_15[0] -pin mem_reg[61][0] CE -pin mem_reg[61][1] CE -pin mem_reg[61][2] CE -pin mem_reg[61][3] CE -pin mem_reg[61][4] CE -pin mem_reg[61][5] CE -pin mem_reg[61][6] CE -pin mem_reg[61][7] CE -pin two wp_reg[3]_15[0]
netloc two_n_61 1 8 1 2780 43080n
load net two_n_62 -attr @rip(#1c1f28) wp_reg[2]_12[0] -pin mem_reg[62][0] CE -pin mem_reg[62][1] CE -pin mem_reg[62][2] CE -pin mem_reg[62][3] CE -pin mem_reg[62][4] CE -pin mem_reg[62][5] CE -pin mem_reg[62][6] CE -pin mem_reg[62][7] CE -pin two wp_reg[2]_12[0]
netloc two_n_62 1 8 1 2840 42740n
load net two_n_64 -pin one q_reg[0]_0 -pin two wr_reset_n -pin wp_reg[0] CLR -pin wp_reg[1] CLR -pin wp_reg[2] CLR -pin wp_reg[3] CLR -pin wp_reg[4] CLR -pin wp_reg[5] CLR
netloc two_n_64 1 2 7 520 43620 NJ 43620 NJ 43620 NJ 43620 1700 43560 NJ 43560 2480
load net two_n_65 -attr @rip(#1c1f28) wp_reg[5]_9[0] -pin mem_reg[63][0] CE -pin mem_reg[63][1] CE -pin mem_reg[63][2] CE -pin mem_reg[63][3] CE -pin mem_reg[63][4] CE -pin mem_reg[63][5] CE -pin mem_reg[63][6] CE -pin mem_reg[63][7] CE -pin two wp_reg[5]_9[0]
netloc two_n_65 1 8 1 2700 43440n
load net two_n_66 -attr @rip(#1c1f28) wp_reg[0]_4[0] -pin mem_reg[31][0] CE -pin mem_reg[31][1] CE -pin mem_reg[31][2] CE -pin mem_reg[31][3] CE -pin mem_reg[31][4] CE -pin mem_reg[31][5] CE -pin mem_reg[31][6] CE -pin mem_reg[31][7] CE -pin two wp_reg[0]_4[0]
netloc two_n_66 1 8 1 2860 19270n
load net two_n_7 -attr @rip(#1c1f28) wp_reg[5]_2[0] -pin mem_reg[3][0] CE -pin mem_reg[3][1] CE -pin mem_reg[3][2] CE -pin mem_reg[3][3] CE -pin mem_reg[3][4] CE -pin mem_reg[3][5] CE -pin mem_reg[3][6] CE -pin mem_reg[3][7] CE -pin two wp_reg[5]_2[0]
netloc two_n_7 1 8 1 2720 40570n
load net two_n_8 -attr @rip(#1c1f28) wp_reg[1][0] -pin mem_reg[4][0] CE -pin mem_reg[4][1] CE -pin mem_reg[4][2] CE -pin mem_reg[4][3] CE -pin mem_reg[4][4] CE -pin mem_reg[4][5] CE -pin mem_reg[4][6] CE -pin mem_reg[4][7] CE -pin two wp_reg[1][0]
netloc two_n_8 1 8 1 3080 30520n
load net two_n_9 -attr @rip(#1c1f28) wp_reg[1]_0[0] -pin mem_reg[5][0] CE -pin mem_reg[5][1] CE -pin mem_reg[5][2] CE -pin mem_reg[5][3] CE -pin mem_reg[5][4] CE -pin mem_reg[5][5] CE -pin mem_reg[5][6] CE -pin mem_reg[5][7] CE -pin two wp_reg[1]_0[0]
netloc two_n_9 1 8 1 3300 42340n
load net wp0 -pin two wp0 -pin wp_reg[0] CE -pin wp_reg[1] CE -pin wp_reg[2] CE -pin wp_reg[3] CE -pin wp_reg[4] CE -pin wp_reg[5] CE
netloc wp0 1 2 7 500 43980 NJ 43980 NJ 43980 NJ 43980 NJ 43980 NJ 43980 2680
load net wp[0] -pin wp[0]_i_1 O -pin wp_reg[0] D
netloc wp[0] 1 2 1 N 42690
load net wp[1] -pin wp[1]_i_1 O -pin wp_reg[1] D
netloc wp[1] 1 2 1 460 42840n
load net wp[2] -pin wp[2]_i_1 O -pin wp_reg[2] D
netloc wp[2] 1 2 1 N 43250
load net wp[3] -pin wp[3]_i_1 O -pin wp_reg[3] D
netloc wp[3] 1 2 1 420 43360n
load net wp[4] -pin wp[4]_i_1 O -pin wp_reg[4] D
netloc wp[4] 1 2 1 420 43510n
load net wp[5] -pin wp[5]_i_2 O -pin wp_reg[5] D
netloc wp[5] 1 2 1 NJ 43730
load net wp_reg_n_0_[0] -attr @rip(#1c1f28) 0 -pin three q_reg[5]_0[0] -pin two Q[0] -pin wp[0]_i_1 I0 -pin wp[1]_i_1 I1 -pin wp[2]_i_1 I1 -pin wp[3]_i_1 I1 -pin wp[4]_i_1 I0 -pin wp[5]_i_2 I1 -pin wp_reg[0] Q
load net wp_reg_n_0_[1] -attr @rip(#1c1f28) 1 -pin three q_reg[5]_0[1] -pin two Q[1] -pin wp[1]_i_1 I0 -pin wp[2]_i_1 I0 -pin wp[3]_i_1 I2 -pin wp[4]_i_1 I1 -pin wp[5]_i_2 I2 -pin wp_reg[1] Q
load net wp_reg_n_0_[2] -attr @rip(#1c1f28) 2 -pin three q_reg[5]_0[2] -pin two Q[2] -pin wp[2]_i_1 I2 -pin wp[3]_i_1 I0 -pin wp[4]_i_1 I2 -pin wp[5]_i_2 I3 -pin wp_reg[2] Q
load net wp_reg_n_0_[3] -attr @rip(#1c1f28) 3 -pin three q_reg[5]_0[3] -pin two Q[3] -pin wp[3]_i_1 I3 -pin wp[4]_i_1 I3 -pin wp[5]_i_2 I4 -pin wp_reg[3] Q
load net wp_reg_n_0_[4] -attr @rip(#1c1f28) 4 -pin three q_reg[5]_0[4] -pin two Q[4] -pin wp[4]_i_1 I4 -pin wp[5]_i_2 I0 -pin wp_reg[4] Q
load net wp_reg_n_0_[5] -attr @rip(#1c1f28) 5 -pin three q_reg[5]_0[5] -pin two Q[5] -pin wp[5]_i_2 I5 -pin wp_reg[5] Q
load net wr_clk -port wr_clk -pin wr_clk_IBUF_inst I
netloc wr_clk 1 0 1 NJ 43620
load net wr_clk_IBUF -pin wr_clk_IBUF_BUFG_inst I -pin wr_clk_IBUF_inst O
netloc wr_clk_IBUF 1 1 1 NJ 43620
load net wr_clk_IBUF_BUFG -pin mem_reg[0][0] C -pin mem_reg[0][1] C -pin mem_reg[0][2] C -pin mem_reg[0][3] C -pin mem_reg[0][4] C -pin mem_reg[0][5] C -pin mem_reg[0][6] C -pin mem_reg[0][7] C -pin mem_reg[10][0] C -pin mem_reg[10][1] C -pin mem_reg[10][2] C -pin mem_reg[10][3] C -pin mem_reg[10][4] C -pin mem_reg[10][5] C -pin mem_reg[10][6] C -pin mem_reg[10][7] C -pin mem_reg[11][0] C -pin mem_reg[11][1] C -pin mem_reg[11][2] C -pin mem_reg[11][3] C -pin mem_reg[11][4] C -pin mem_reg[11][5] C -pin mem_reg[11][6] C -pin mem_reg[11][7] C -pin mem_reg[12][0] C -pin mem_reg[12][1] C -pin mem_reg[12][2] C -pin mem_reg[12][3] C -pin mem_reg[12][4] C -pin mem_reg[12][5] C -pin mem_reg[12][6] C -pin mem_reg[12][7] C -pin mem_reg[13][0] C -pin mem_reg[13][1] C -pin mem_reg[13][2] C -pin mem_reg[13][3] C -pin mem_reg[13][4] C -pin mem_reg[13][5] C -pin mem_reg[13][6] C -pin mem_reg[13][7] C -pin mem_reg[14][0] C -pin mem_reg[14][1] C -pin mem_reg[14][2] C -pin mem_reg[14][3] C -pin mem_reg[14][4] C -pin mem_reg[14][5] C -pin mem_reg[14][6] C -pin mem_reg[14][7] C -pin mem_reg[15][0] C -pin mem_reg[15][1] C -pin mem_reg[15][2] C -pin mem_reg[15][3] C -pin mem_reg[15][4] C -pin mem_reg[15][5] C -pin mem_reg[15][6] C -pin mem_reg[15][7] C -pin mem_reg[16][0] C -pin mem_reg[16][1] C -pin mem_reg[16][2] C -pin mem_reg[16][3] C -pin mem_reg[16][4] C -pin mem_reg[16][5] C -pin mem_reg[16][6] C -pin mem_reg[16][7] C -pin mem_reg[17][0] C -pin mem_reg[17][1] C -pin mem_reg[17][2] C -pin mem_reg[17][3] C -pin mem_reg[17][4] C -pin mem_reg[17][5] C -pin mem_reg[17][6] C -pin mem_reg[17][7] C -pin mem_reg[18][0] C -pin mem_reg[18][1] C -pin mem_reg[18][2] C -pin mem_reg[18][3] C -pin mem_reg[18][4] C -pin mem_reg[18][5] C -pin mem_reg[18][6] C -pin mem_reg[18][7] C -pin mem_reg[19][0] C -pin mem_reg[19][1] C -pin mem_reg[19][2] C -pin mem_reg[19][3] C -pin mem_reg[19][4] C -pin mem_reg[19][5] C -pin mem_reg[19][6] C -pin mem_reg[19][7] C -pin mem_reg[1][0] C -pin mem_reg[1][1] C -pin mem_reg[1][2] C -pin mem_reg[1][3] C -pin mem_reg[1][4] C -pin mem_reg[1][5] C -pin mem_reg[1][6] C -pin mem_reg[1][7] C -pin mem_reg[20][0] C -pin mem_reg[20][1] C -pin mem_reg[20][2] C -pin mem_reg[20][3] C -pin mem_reg[20][4] C -pin mem_reg[20][5] C -pin mem_reg[20][6] C -pin mem_reg[20][7] C -pin mem_reg[21][0] C -pin mem_reg[21][1] C -pin mem_reg[21][2] C -pin mem_reg[21][3] C -pin mem_reg[21][4] C -pin mem_reg[21][5] C -pin mem_reg[21][6] C -pin mem_reg[21][7] C -pin mem_reg[22][0] C -pin mem_reg[22][1] C -pin mem_reg[22][2] C -pin mem_reg[22][3] C -pin mem_reg[22][4] C -pin mem_reg[22][5] C -pin mem_reg[22][6] C -pin mem_reg[22][7] C -pin mem_reg[23][0] C -pin mem_reg[23][1] C -pin mem_reg[23][2] C -pin mem_reg[23][3] C -pin mem_reg[23][4] C -pin mem_reg[23][5] C -pin mem_reg[23][6] C -pin mem_reg[23][7] C -pin mem_reg[24][0] C -pin mem_reg[24][1] C -pin mem_reg[24][2] C -pin mem_reg[24][3] C -pin mem_reg[24][4] C -pin mem_reg[24][5] C -pin mem_reg[24][6] C -pin mem_reg[24][7] C -pin mem_reg[25][0] C -pin mem_reg[25][1] C -pin mem_reg[25][2] C -pin mem_reg[25][3] C -pin mem_reg[25][4] C -pin mem_reg[25][5] C -pin mem_reg[25][6] C -pin mem_reg[25][7] C -pin mem_reg[26][0] C -pin mem_reg[26][1] C -pin mem_reg[26][2] C -pin mem_reg[26][3] C -pin mem_reg[26][4] C -pin mem_reg[26][5] C -pin mem_reg[26][6] C -pin mem_reg[26][7] C -pin mem_reg[27][0] C -pin mem_reg[27][1] C -pin mem_reg[27][2] C -pin mem_reg[27][3] C -pin mem_reg[27][4] C -pin mem_reg[27][5] C -pin mem_reg[27][6] C -pin mem_reg[27][7] C -pin mem_reg[28][0] C -pin mem_reg[28][1] C -pin mem_reg[28][2] C -pin mem_reg[28][3] C -pin mem_reg[28][4] C -pin mem_reg[28][5] C -pin mem_reg[28][6] C -pin mem_reg[28][7] C -pin mem_reg[29][0] C -pin mem_reg[29][1] C -pin mem_reg[29][2] C -pin mem_reg[29][3] C -pin mem_reg[29][4] C -pin mem_reg[29][5] C -pin mem_reg[29][6] C -pin mem_reg[29][7] C -pin mem_reg[2][0] C -pin mem_reg[2][1] C -pin mem_reg[2][2] C -pin mem_reg[2][3] C -pin mem_reg[2][4] C -pin mem_reg[2][5] C -pin mem_reg[2][6] C -pin mem_reg[2][7] C -pin mem_reg[30][0] C -pin mem_reg[30][1] C -pin mem_reg[30][2] C -pin mem_reg[30][3] C -pin mem_reg[30][4] C -pin mem_reg[30][5] C -pin mem_reg[30][6] C -pin mem_reg[30][7] C -pin mem_reg[31][0] C -pin mem_reg[31][1] C -pin mem_reg[31][2] C -pin mem_reg[31][3] C -pin mem_reg[31][4] C -pin mem_reg[31][5] C -pin mem_reg[31][6] C -pin mem_reg[31][7] C -pin mem_reg[32][0] C -pin mem_reg[32][1] C -pin mem_reg[32][2] C -pin mem_reg[32][3] C -pin mem_reg[32][4] C -pin mem_reg[32][5] C -pin mem_reg[32][6] C -pin mem_reg[32][7] C -pin mem_reg[33][0] C -pin mem_reg[33][1] C -pin mem_reg[33][2] C -pin mem_reg[33][3] C -pin mem_reg[33][4] C -pin mem_reg[33][5] C -pin mem_reg[33][6] C -pin mem_reg[33][7] C -pin mem_reg[34][0] C -pin mem_reg[34][1] C -pin mem_reg[34][2] C -pin mem_reg[34][3] C -pin mem_reg[34][4] C -pin mem_reg[34][5] C -pin mem_reg[34][6] C -pin mem_reg[34][7] C -pin mem_reg[35][0] C -pin mem_reg[35][1] C -pin mem_reg[35][2] C -pin mem_reg[35][3] C -pin mem_reg[35][4] C -pin mem_reg[35][5] C -pin mem_reg[35][6] C -pin mem_reg[35][7] C -pin mem_reg[36][0] C -pin mem_reg[36][1] C -pin mem_reg[36][2] C -pin mem_reg[36][3] C -pin mem_reg[36][4] C -pin mem_reg[36][5] C -pin mem_reg[36][6] C -pin mem_reg[36][7] C -pin mem_reg[37][0] C -pin mem_reg[37][1] C -pin mem_reg[37][2] C -pin mem_reg[37][3] C -pin mem_reg[37][4] C -pin mem_reg[37][5] C -pin mem_reg[37][6] C -pin mem_reg[37][7] C -pin mem_reg[38][0] C -pin mem_reg[38][1] C -pin mem_reg[38][2] C -pin mem_reg[38][3] C -pin mem_reg[38][4] C -pin mem_reg[38][5] C -pin mem_reg[38][6] C -pin mem_reg[38][7] C -pin mem_reg[39][0] C -pin mem_reg[39][1] C -pin mem_reg[39][2] C -pin mem_reg[39][3] C -pin mem_reg[39][4] C -pin mem_reg[39][5] C -pin mem_reg[39][6] C -pin mem_reg[39][7] C -pin mem_reg[3][0] C -pin mem_reg[3][1] C -pin mem_reg[3][2] C -pin mem_reg[3][3] C -pin mem_reg[3][4] C -pin mem_reg[3][5] C -pin mem_reg[3][6] C -pin mem_reg[3][7] C -pin mem_reg[40][0] C -pin mem_reg[40][1] C -pin mem_reg[40][2] C -pin mem_reg[40][3] C -pin mem_reg[40][4] C -pin mem_reg[40][5] C -pin mem_reg[40][6] C -pin mem_reg[40][7] C -pin mem_reg[41][0] C -pin mem_reg[41][1] C -pin mem_reg[41][2] C -pin mem_reg[41][3] C -pin mem_reg[41][4] C -pin mem_reg[41][5] C -pin mem_reg[41][6] C -pin mem_reg[41][7] C -pin mem_reg[42][0] C -pin mem_reg[42][1] C -pin mem_reg[42][2] C -pin mem_reg[42][3] C -pin mem_reg[42][4] C -pin mem_reg[42][5] C -pin mem_reg[42][6] C -pin mem_reg[42][7] C -pin mem_reg[43][0] C -pin mem_reg[43][1] C -pin mem_reg[43][2] C -pin mem_reg[43][3] C -pin mem_reg[43][4] C -pin mem_reg[43][5] C -pin mem_reg[43][6] C -pin mem_reg[43][7] C -pin mem_reg[44][0] C -pin mem_reg[44][1] C -pin mem_reg[44][2] C -pin mem_reg[44][3] C -pin mem_reg[44][4] C -pin mem_reg[44][5] C -pin mem_reg[44][6] C -pin mem_reg[44][7] C -pin mem_reg[45][0] C -pin mem_reg[45][1] C -pin mem_reg[45][2] C -pin mem_reg[45][3] C -pin mem_reg[45][4] C -pin mem_reg[45][5] C -pin mem_reg[45][6] C -pin mem_reg[45][7] C -pin mem_reg[46][0] C -pin mem_reg[46][1] C -pin mem_reg[46][2] C -pin mem_reg[46][3] C -pin mem_reg[46][4] C -pin mem_reg[46][5] C -pin mem_reg[46][6] C -pin mem_reg[46][7] C -pin mem_reg[47][0] C -pin mem_reg[47][1] C -pin mem_reg[47][2] C -pin mem_reg[47][3] C -pin mem_reg[47][4] C -pin mem_reg[47][5] C -pin mem_reg[47][6] C -pin mem_reg[47][7] C -pin mem_reg[48][0] C -pin mem_reg[48][1] C -pin mem_reg[48][2] C -pin mem_reg[48][3] C -pin mem_reg[48][4] C -pin mem_reg[48][5] C -pin mem_reg[48][6] C -pin mem_reg[48][7] C -pin mem_reg[49][0] C -pin mem_reg[49][1] C -pin mem_reg[49][2] C -pin mem_reg[49][3] C -pin mem_reg[49][4] C -pin mem_reg[49][5] C -pin mem_reg[49][6] C -pin mem_reg[49][7] C -pin mem_reg[4][0] C -pin mem_reg[4][1] C -pin mem_reg[4][2] C -pin mem_reg[4][3] C -pin mem_reg[4][4] C -pin mem_reg[4][5] C -pin mem_reg[4][6] C -pin mem_reg[4][7] C -pin mem_reg[50][0] C -pin mem_reg[50][1] C -pin mem_reg[50][2] C -pin mem_reg[50][3] C -pin mem_reg[50][4] C -pin mem_reg[50][5] C -pin mem_reg[50][6] C -pin mem_reg[50][7] C -pin mem_reg[51][0] C -pin mem_reg[51][1] C -pin mem_reg[51][2] C -pin mem_reg[51][3] C -pin mem_reg[51][4] C -pin mem_reg[51][5] C -pin mem_reg[51][6] C -pin mem_reg[51][7] C -pin mem_reg[52][0] C -pin mem_reg[52][1] C -pin mem_reg[52][2] C -pin mem_reg[52][3] C -pin mem_reg[52][4] C -pin mem_reg[52][5] C -pin mem_reg[52][6] C -pin mem_reg[52][7] C -pin mem_reg[53][0] C -pin mem_reg[53][1] C -pin mem_reg[53][2] C -pin mem_reg[53][3] C -pin mem_reg[53][4] C -pin mem_reg[53][5] C -pin mem_reg[53][6] C -pin mem_reg[53][7] C -pin mem_reg[54][0] C -pin mem_reg[54][1] C -pin mem_reg[54][2] C -pin mem_reg[54][3] C -pin mem_reg[54][4] C -pin mem_reg[54][5] C -pin mem_reg[54][6] C -pin mem_reg[54][7] C -pin mem_reg[55][0] C -pin mem_reg[55][1] C -pin mem_reg[55][2] C -pin mem_reg[55][3] C -pin mem_reg[55][4] C -pin mem_reg[55][5] C -pin mem_reg[55][6] C -pin mem_reg[55][7] C -pin mem_reg[56][0] C -pin mem_reg[56][1] C -pin mem_reg[56][2] C -pin mem_reg[56][3] C -pin mem_reg[56][4] C -pin mem_reg[56][5] C -pin mem_reg[56][6] C -pin mem_reg[56][7] C -pin mem_reg[57][0] C -pin mem_reg[57][1] C -pin mem_reg[57][2] C -pin mem_reg[57][3] C -pin mem_reg[57][4] C -pin mem_reg[57][5] C -pin mem_reg[57][6] C -pin mem_reg[57][7] C -pin mem_reg[58][0] C -pin mem_reg[58][1] C -pin mem_reg[58][2] C -pin mem_reg[58][3] C -pin mem_reg[58][4] C -pin mem_reg[58][5] C -pin mem_reg[58][6] C -pin mem_reg[58][7] C -pin mem_reg[59][0] C -pin mem_reg[59][1] C -pin mem_reg[59][2] C -pin mem_reg[59][3] C -pin mem_reg[59][4] C -pin mem_reg[59][5] C -pin mem_reg[59][6] C -pin mem_reg[59][7] C -pin mem_reg[5][0] C -pin mem_reg[5][1] C -pin mem_reg[5][2] C -pin mem_reg[5][3] C -pin mem_reg[5][4] C -pin mem_reg[5][5] C -pin mem_reg[5][6] C -pin mem_reg[5][7] C -pin mem_reg[60][0] C -pin mem_reg[60][1] C -pin mem_reg[60][2] C -pin mem_reg[60][3] C -pin mem_reg[60][4] C -pin mem_reg[60][5] C -pin mem_reg[60][6] C -pin mem_reg[60][7] C -pin mem_reg[61][0] C -pin mem_reg[61][1] C -pin mem_reg[61][2] C -pin mem_reg[61][3] C -pin mem_reg[61][4] C -pin mem_reg[61][5] C -pin mem_reg[61][6] C -pin mem_reg[61][7] C -pin mem_reg[62][0] C -pin mem_reg[62][1] C -pin mem_reg[62][2] C -pin mem_reg[62][3] C -pin mem_reg[62][4] C -pin mem_reg[62][5] C -pin mem_reg[62][6] C -pin mem_reg[62][7] C -pin mem_reg[63][0] C -pin mem_reg[63][1] C -pin mem_reg[63][2] C -pin mem_reg[63][3] C -pin mem_reg[63][4] C -pin mem_reg[63][5] C -pin mem_reg[63][6] C -pin mem_reg[63][7] C -pin mem_reg[6][0] C -pin mem_reg[6][1] C -pin mem_reg[6][2] C -pin mem_reg[6][3] C -pin mem_reg[6][4] C -pin mem_reg[6][5] C -pin mem_reg[6][6] C -pin mem_reg[6][7] C -pin mem_reg[7][0] C -pin mem_reg[7][1] C -pin mem_reg[7][2] C -pin mem_reg[7][3] C -pin mem_reg[7][4] C -pin mem_reg[7][5] C -pin mem_reg[7][6] C -pin mem_reg[7][7] C -pin mem_reg[8][0] C -pin mem_reg[8][1] C -pin mem_reg[8][2] C -pin mem_reg[8][3] C -pin mem_reg[8][4] C -pin mem_reg[8][5] C -pin mem_reg[8][6] C -pin mem_reg[8][7] C -pin mem_reg[9][0] C -pin mem_reg[9][1] C -pin mem_reg[9][2] C -pin mem_reg[9][3] C -pin mem_reg[9][4] C -pin mem_reg[9][5] C -pin mem_reg[9][6] C -pin mem_reg[9][7] C -pin one CLK -pin two CLK -pin wp_reg[0] C -pin wp_reg[1] C -pin wp_reg[2] C -pin wp_reg[3] C -pin wp_reg[4] C -pin wp_reg[5] C -pin wr_clk_IBUF_BUFG_inst O
netloc wr_clk_IBUF_BUFG 1 2 7 440 43310 NJ 43310 NJ 43310 NJ 43310 1700 43250 2060 43540 2880
load net wr_en -port wr_en -pin wr_en_IBUF_inst I
netloc wr_en 1 0 7 NJ 42810 NJ 42810 480J 42890 NJ 42890 NJ 42890 NJ 42890 1680J
load net wr_en_IBUF -pin two wr_en_IBUF -pin wr_en_IBUF_inst O
netloc wr_en_IBUF 1 7 1 NJ 42840
load net wr_reset_n -port wr_reset_n -pin wr_reset_n_IBUF_inst I
netloc wr_reset_n 1 0 7 NJ 42910 NJ 42910 NJ 42910 NJ 42910 NJ 42910 NJ 42910 NJ
load net wr_reset_n_IBUF -pin two wr_reset_n_IBUF -pin wr_reset_n_IBUF_inst O
netloc wr_reset_n_IBUF 1 7 1 2040J 42860n
load netBundle @din 8 din[7] din[6] din[5] din[4] din[3] din[2] din[1] din[0] -autobundled
netbloc @din 1 0 8 NJ 47140 NJ 47140 NJ 47140 NJ 47140 NJ 47140 NJ 47140 NJ 47140 2060
load netBundle @dout 8 dout[7] dout[6] dout[5] dout[4] dout[3] dout[2] dout[1] dout[0] -autobundled
netbloc @dout 1 15 1 13230 40090n
load netBundle @q 6 q[5] q[4] q[3] q[2] q[1] q[0] -autobundled
netbloc @q 1 7 1 2020 42800n
load netBundle @three_n_ 6 three_n_1 three_n_2 three_n_3 three_n_4 three_n_5 three_n_6 -autobundled
netbloc @three_n_ 1 4 1 N 43070
load netBundle @rp_reg_n_0_ 6 rp_reg_n_0_[5] rp_reg_n_0_[4] rp_reg_n_0_[3] rp_reg_n_0_[2] rp_reg_n_0_[1] rp_reg_n_0_[0] -autobundled
netbloc @rp_reg_n_0_ 1 4 9 1140 44000 NJ 44000 1680 45390 NJ 45390 NJ 45390 7920 37240 11780 39070N 12020 38040N 12230
load netBundle @wp_reg_n_0_ 6 wp_reg_n_0_[5] wp_reg_n_0_[4] wp_reg_n_0_[3] wp_reg_n_0_[2] wp_reg_n_0_[1] wp_reg_n_0_[0] -autobundled
netbloc @wp_reg_n_0_ 1 1 7 190 43830 NJ 43830 750 42800 NJ 42800 NJ 42800 NJ 42800 2000
levelinfo -pg 1 0 40 230 560 920 1270 1590 1820 2190 3670 11660 11890 12100 12690 12950 13070 13250
pagesize -pg 1 -db -bbox -sgen -130 0 13360 76980
show
fullfit
#
# initialize ictrl to current module asynchronous_fifo work:asynchronous_fifo:NOFILE
ictrl init topinfo |
