class wr_cov;
wr_tx tx;

covergroup cg;
coverpoint tx.wr_en{
bins WRITES={1'b1};
}
endgroup


function new();
cg=new();
endfunction

task run();
//coverage functionality
forever begin

fifo_common::wr_mon2cov.get(tx);
tx.print("wr_cov");
cg.sample();
end
endtask

endclass
