module fifo_assert(wr_clk,rd_clk,rst,wr_en,rd_en,wdata,rdata,full,empty,overflow,underflow);
input wr_clk,rd_clk,rst,wr_en,rd_en;
input [`WIDTH-1:0] wdata;
output reg [`WIDTH-1:0]rdata;
output reg empty,underflow,full,overflow;

property no_overflow;
  @(posedge wr_clk) disable iff (rst)
    !(wr_en && full);
endproperty
	NO_OVERFLOW:assert property(no_overflow);
endmodule
 
