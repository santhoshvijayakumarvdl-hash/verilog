module tb_compare_wire_reg;
wire a;
reg[7:0] b;
assign a= b[3];
initial begin
$monitor(" %d %d ", $realtime, b,a);
end
initial begin 
 b=8'b00011101; #5;
 b=1; #5;
 b=-9; #5;
end
endmodule
