class wr_gen;
wr_tx tx;

task run();
//gen functionality
case (fifo_common::test_name)
"FULL":begin
writes(`FIFO_SIZE);  //N=`FIFO_SIZE=16
end
"EMPTY":begin
writes(`FIFO_SIZE);
end
"OVERFLOW":begin
//writes(`FIFO_SIZE);
end
"UNDERFLOW":begin

end
"CONCURRENT":begin
//repeat(fifo_common::num_txns)  begin
//tx=new();
//assert(tx.randomize));
//tx.wr_en=1;
//tx.concurrent=1;
//@(posedge tx.wr_clk);
//end
//$display("[WR_GEN] concurrent write generation completed");
end
endcase
endtask

task writes(input int N);
repeat(N) begin
tx=new();
tx.randomize() with {tx.wr_en==1;};
//tx.print("wr_gen");
fifo_common::wr_gen2bfm.put(tx);
end
endtask

endclass




//# ---------wr_gen--------
//# wr_en=1
//# wdata=174
//# full=0
//# overflow=0
//# ---------wr_gen--------
//# wr_en=1
//# wdata=125
//# full=0
//# overflow=0
//# ---------wr_gen--------
//# wr_en=1
//# wdata=208
//# full=0
//# overflow=0
//# ---------wr_gen--------
//# wr_en=1
//# wdata=51
//# full=0
//# overflow=0
//# ---------wr_gen--------
//# wr_en=1
//# wdata=153
//# full=0
//# overflow=0
//# ---------wr_gen--------
//# wr_en=1
//# wdata=157
//# full=0
//# overflow=0
//# ---------wr_gen--------
//# wr_en=1
//# wdata=158
//# full=0
//# overflow=0
//# ---------wr_gen--------
//# wr_en=1
//# wdata=247
//# full=0
//# overflow=0
//# ---------wr_gen--------
//# wr_en=1
//# wdata=143
//# full=0
//# overflow=0
//# ---------wr_gen--------
//# wr_en=1
//# wdata=81
//# full=0
//# overflow=0
//# ---------wr_gen--------
//# wr_en=1
//# wdata=177
//# full=0
//# overflow=0
//# ---------wr_gen--------
//# wr_en=1
//# wdata=57
//# full=0
//# overflow=0
//# ---------wr_gen--------
//# wr_en=1
//# wdata=81
//# full=0
//# overflow=0
//# ---------wr_gen--------
//# wr_en=1
//# wdata=190
//# full=0
//# overflow=0
//# ---------wr_gen--------
//# wr_en=1
//# wdata=2
//# full=0
//# overflow=0
//# ---------wr_gen--------
//# wr_en=1
//# wdata=172
//# full=0
//# overflow=0
