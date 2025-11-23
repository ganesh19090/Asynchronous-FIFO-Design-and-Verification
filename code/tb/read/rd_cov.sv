class rd_cov;
rd_tx tx;

covergroup cg;
coverpoint tx.rd_en{
bins READS = {1'b1};
}
endgroup

//covergroup cg @(posedge tx.rd_clk);
//
//  rd_en_cp : coverpoint tx.rd_en {
//    bins READS = {1'b1};
//  }
//
//  underflow_cp : coverpoint (tx.rd_en && tx.empty) {
//    bins underflow = {1};
//  }
//
//endgroup

function new();
cg=new();
endfunction
task run();
//coverage functionality
forever begin
fifo_common::rd_mon2cov.get(tx);
tx.print("rd_cov");
cg.sample();
end
endtask

endclass
