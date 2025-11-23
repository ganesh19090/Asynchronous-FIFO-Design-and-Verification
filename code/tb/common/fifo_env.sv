class fifo_env;
fifo_sbd sbd;
wr_agent w_a;
rd_agent r_a;
task run();

w_a=new();
r_a=new();
sbd=new();

fork 
w_a.run();
r_a.run();
sbd.run();
join
endtask


endclass
