module tb_compare_wire_reg;
/*real b;
real a;*/
 reg [3:0]a;
//wirew U1( .a(a),.b(b));
reg[7:0] b;
always@*
assign a= b[3:0];

initial begin

$monitor(" %d %d ", $realtime, b,a);
end
initial begin 
 b=8'b00011101; #5;
 b=1; #5;
 b=-9; #5;
end
endmodule
