# Asynchronous FIFO timing constraints
# wr_clk = 80 MHz -> 12.5 ns period
# rd_clk = 50 MHz -> 20.0 ns period

create_clock -name wr_clk -period 12.5 [get_ports wr_clk]
create_clock -name rd_clk -period 20.0 [get_ports rd_clk]

# The two FIFO clock domains are asynchronous.
# Do not time paths directly between wr_clk and rd_clk.
set_clock_groups -asynchronous \
    -group [get_clocks wr_clk] \
    -group [get_clocks rd_clk]
