module tb_compare_wire_reg;

integer b;

initial begin

$monitor(" %d ", $realtime, b);
end
initial begin 
 b=7.2; #5;
 b=1.8; #5;
 b=-9; #5;
end
endmodule
