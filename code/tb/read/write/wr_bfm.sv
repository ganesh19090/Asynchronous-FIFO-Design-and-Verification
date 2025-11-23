class wr_bfm;

wr_tx tx;
virtual fifo_intrf vif;


task run();
vif=tb.pif;
forever begin
//bfm functionality
fifo_common::wr_gen2bfm.get(tx);
drive_tx(tx);
tx.print("wr_bfm");
fifo_common::wr_bfm_count++;
end
endtask

task drive_tx(wr_tx tx);
@(vif.wr_bfm_cb);
vif.wr_bfm_cb.wr_en		<=tx.wr_en;
vif.wr_bfm_cb.wdata		<=tx.wdata;
tx.full=vif.wr_bfm_cb.full;
tx.overflow=vif.wr_bfm_cb.overflow;
@(vif.wr_bfm_cb);
vif.wr_bfm_cb.wr_en		<=0;
vif.wr_bfm_cb.wdata		<=0;
endtask

endclass

//# ---------wr_gen--------
//# wr_en=1
//# wdata=59
//# full=0
//# overflow=0
//# ---------wr_gen--------
//# wr_en=1
//# wdata=29
//# full=0
//# overflow=0
//# ---------wr_gen--------
//# wr_en=1
//# wdata=92
//# full=0
//# overflow=0
//# ---------wr_gen--------
//# wr_en=1
//# wdata=119
//# full=0
//# overflow=0
//# ---------wr_gen--------
//# wr_en=1
//# wdata=167
//# full=0
//# overflow=0
//# ---------wr_gen--------
//# wr_en=1
//# wdata=185
//# full=0
//# overflow=0
//# ---------wr_gen--------
//# wr_en=1
//# wdata=201
//# full=0
//# overflow=0
//# ---------wr_gen--------
//# wr_en=1
//# wdata=175
//# full=0
//# overflow=0
//# ---------wr_gen--------
//# wr_en=1
//# wdata=94
//# full=0
//# overflow=0
//# ---------wr_gen--------
//# wr_en=1
//# wdata=215
//# full=0
//# overflow=0
//# ---------wr_gen--------
//# wr_en=1
//# wdata=8
//# full=0
//# overflow=0
//# ---------wr_gen--------
//# wr_en=1
//# wdata=167
//# full=0
//# overflow=0
//# ---------wr_gen--------
//# wr_en=1
//# wdata=15
//# full=0
//# overflow=0
//# ---------wr_gen--------
//# wr_en=1
//# wdata=112
//# full=0
//# overflow=0
//# ---------wr_gen--------
//# wr_en=1
//# wdata=12
//# full=0
//# overflow=0
//# ---------wr_gen--------
//# wr_en=1
//# wdata=77
//# full=0
//# overflow=0
//# ---------wr_bfm--------
//# wr_en=1
//# wdata=59
//# full=0
//# overflow=0
//# ---------wr_bfm--------
//# wr_en=1
//# wdata=29
//# full=0
//# overflow=0
//# ---------wr_bfm--------
//# wr_en=1
//# wdata=92
//# full=0
//# overflow=0
//# ---------wr_bfm--------
//# wr_en=1
//# wdata=119
//# full=0
//# overflow=0
//# ---------wr_bfm--------
//# wr_en=1
//# wdata=167
//# full=0
//# overflow=0
//# ---------wr_bfm--------
//# wr_en=1
//# wdata=185
//# full=0
//# overflow=0
//# ---------wr_bfm--------
//# wr_en=1
//# wdata=201
//# full=0
//# overflow=0
//# ---------wr_bfm--------
//# wr_en=1
//# wdata=175
//# full=0
//# overflow=0
//# ---------wr_bfm--------
//# wr_en=1
//# wdata=94
//# full=0
//# overflow=0
//# ---------wr_bfm--------
//# wr_en=1
//# wdata=215
//# full=0
//# overflow=0
//# ---------wr_bfm--------
//# wr_en=1
//# wdata=8
//# full=0
//# overflow=0
//# ---------wr_bfm--------
//# wr_en=1
//# wdata=167
//# full=0
//# overflow=0
//# ---------wr_bfm--------
//# wr_en=1
//# wdata=15
//# full=0
//# overflow=0
//# ---------wr_bfm--------
//# wr_en=1
//# wdata=112
//# full=0
//# overflow=0
//# ---------wr_bfm--------
//# wr_en=1
//# wdata=12
//# full=0
//# overflow=0
//# ---------wr_bfm--------
//# wr_en=1
//# wdata=77
//# full=0
//# overflow=0
