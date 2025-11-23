class rd_tx;
rand bit [`WIDTH-1:0]rdata;
rand bit rd_en;
bit empty,underflow;
bit concurrent;
bit rd_clk;
function void print(input string str="rd_tx");
$display("%0t: ---------%0s--------",$time,str);
$display("rd_en=%0b",rd_en);
$display("rdata=%0d",rdata);
$display("empty=%0b",empty);
$display("underflow=%0b",underflow);
endfunction

endclass

