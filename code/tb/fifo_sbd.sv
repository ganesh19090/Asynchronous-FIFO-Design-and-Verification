class fifo_sbd;

wr_tx w_t;
rd_tx r_t;

int que[$];
int value;
task run();
//scoreboard functionality
forever begin
fifo_common::wr_mon2sbd.get(w_t);
w_t.print("wr_sbd");
fifo_common::rd_mon2sbd.get(r_t);
r_t.print("rd_sbd");
if(w_t.wr_en==1) begin
que.push_back(w_t.wdata);
end
if(r_t.rd_en==1) begin
value=que.pop_front();
if(r_t.rdata==value)
fifo_common::matchings++;
else fifo_common::mismatchings++;

end
end
endtask
endclass
