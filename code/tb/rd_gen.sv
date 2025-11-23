class rd_gen;
rd_tx tx;

task run();
//gen functionality
case (fifo_common::test_name)

"FULL":begin

end
"EMPTY":begin
reads(`FIFO_SIZE);
end
"OVERFLOW":begin

end
"UNDERFLOW":begin
//reads(`FIFO_SIZE);
end
"CONCURRENT":begin
//repeat(fifo_common::num_txns) begin
//tx=new();
//assert(tx.randomize());
//tx.rd_en=1;
//tx.concurrent=1;
//@(posedge tx.rd_clk);
//end
//$display("[RD_GEN] concurrent read generation completed");
end
endcase
endtask

task reads(input int N);
repeat(N) begin
tx=new();
tx.randomize() with {tx.rd_en==1;};
//tx.print("rd_gen");
fifo_common::rd_gen2bfm.put(tx);

//end
//endtask 

end
endtask

endclass


// ---------rd_gen--------
//# rd_en=1
//# rdata=253
//# empty=0
//# underflow=0
//# ---------rd_gen--------
//# rd_en=1
//# rdata=17
//# empty=0
//# underflow=0
//# ---------rd_gen--------
//# rd_en=1
//# rdata=180
//# empty=0
//# underflow=0
//# ---------rd_gen--------
//# rd_en=1
//# rdata=147
//# empty=0
//# underflow=0
//# ---------rd_gen--------
//# rd_en=1
//# rdata=209
//# empty=0
//# underflow=0
//# ---------rd_gen--------
//# rd_en=1
//# rdata=47
//# empty=0
//# underflow=0
//# ---------rd_gen--------
//# rd_en=1
//# rdata=180
//# empty=0
//# underflow=0
//# ---------rd_gen--------
//# rd_en=1
//# rdata=232
//# empty=0
//# underflow=0
//# ---------rd_gen--------
//# rd_en=1
//# rdata=210
//# empty=0
//# underflow=0
//# ---------rd_gen--------
//# rd_en=1
//# rdata=125
//# empty=0
//# underflow=0
//# ---------rd_gen--------
//# rd_en=1
//# rdata=60
//# empty=0
//# underflow=0
//# ---------rd_gen--------
//# rd_en=1
//# rdata=41
//# empty=0
//# underflow=0
//# ---------rd_gen--------
//# rd_en=1
//# rdata=124
//# empty=0
//# underflow=0
//# ---------rd_gen--------
//# rd_en=1
//# rdata=223
//# empty=0
//# underflow=0
//# ---------rd_gen--------
//# rd_en=1
//# rdata=102
//# empty=0
//# underflow=0
//# ---------rd_gen--------
//# rd_en=1
//# rdata=246
//# empty=0
//# underflow=0
