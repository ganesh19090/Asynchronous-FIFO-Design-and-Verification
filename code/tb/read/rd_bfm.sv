class rd_bfm;

rd_tx tx;

virtual fifo_intrf vif;

task run();

vif=tb.pif;
forever begin
//bfm functionality
fifo_common::rd_gen2bfm.get(tx);
drive_tx(tx);
tx.print("rd_bfm");
//fifo_common::rd_bfm_count++;
end
endtask

task drive_tx(rd_tx tx);

@(vif.rd_bfm_cb);
vif.rd_bfm_cb.rd_en		<=tx.rd_en;
//if(tx.rd_en==1) begin
wait(vif.rd_bfm_cb.rdata!=0);
//@(vif.rd_bfm_cb);
tx.rdata=vif.rd_bfm_cb.rdata;
//end
tx.empty=vif.rd_bfm_cb.empty;
tx.underflow=vif.rd_bfm_cb.underflow;
@(vif.rd_bfm_cb);
vif.rd_bfm_cb.rd_en 	<=0;
endtask

endclass


//# ---------rd_gen--------
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
//# ---------rd_bfm--------
//# rd_en=1
//# rdata=253
//# empty=0
//# underflow=0
//# ---------rd_bfm--------
//# rd_en=1
//# rdata=17
//# empty=0
//# underflow=0
//# ---------rd_bfm--------
//# rd_en=1
//# rdata=180
//# empty=0
//# underflow=0
//# ---------rd_bfm--------
//# rd_en=1
//# rdata=147
//# empty=0
//# underflow=0
//# ---------rd_bfm--------
//# rd_en=1
//# rdata=209
//# empty=0
//# underflow=0
//# ---------rd_bfm--------
//# rd_en=1
//# rdata=47
//# empty=0
//# underflow=0
//# ---------rd_bfm--------
//# rd_en=1
//# rdata=180
//# empty=0
//# underflow=0
//# ---------rd_bfm--------
//# rd_en=1
//# rdata=232
//# empty=0
//# underflow=0
//# ---------rd_bfm--------
//# rd_en=1
//# rdata=210
//# empty=0
//# underflow=0
//# ---------rd_bfm--------
//# rd_en=1
//# rdata=125
//# empty=0
//# underflow=0
//# ---------rd_bfm--------
//# rd_en=1
//# rdata=60
//# empty=0
//# underflow=0
//# ---------rd_bfm--------
//# rd_en=1
//# rdata=41
//# empty=0
//# underflow=0
//# ---------rd_bfm--------
//# rd_en=1
//# rdata=124
//# empty=0
//# underflow=0
//# ---------rd_bfm--------
//# rd_en=1
//# rdata=223
//# empty=0
//# underflow=0
//# ---------rd_bfm--------
//# rd_en=1
//# rdata=102
//# empty=0
//# underflow=0
//# ---------rd_bfm--------
//# rd_en=1
//# rdata=246
//# empty=0
//# underflow=0
//
