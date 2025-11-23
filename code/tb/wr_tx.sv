class wr_tx;
rand bit [`WIDTH-1:0]wdata;
rand bit wr_en;
bit full,overflow;
bit concurrent;
bit wr_clk;
function void print(input string str="wr_tx");
$display("%0t: ---------%0s--------",$time,str);
$display("wr_en=%0b",wr_en);
$display("wdata=%0d",wdata);
$display("full=%0b",full);
$display("overflow=%0b",overflow);
endfunction

endclass

