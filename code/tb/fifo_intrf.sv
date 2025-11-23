interface fifo_intrf(input reg wr_clk,rd_clk,rst);
bit wr_en;
bit rd_en;
bit[`WIDTH-1:0]wdata;
bit[`WIDTH-1:0]rdata;

bit full,overflow,empty,underflow;

clocking wr_bfm_cb @(posedge wr_clk);
default input #0 output #1;
input full;
input overflow;
output wr_en;
output wdata;
endclocking

clocking rd_bfm_cb @(posedge rd_clk);
default	input #0 output #1;
output rd_en;
input rdata,empty,underflow;	
endclocking

clocking wr_mon_cb @(posedge wr_clk);
default input #1;
input full,overflow,wr_en,wdata;
endclocking

clocking rd_mon_cb @(posedge rd_clk);
default input #1;
input rd_en,rdata,empty,underflow;
endclocking
endinterface
