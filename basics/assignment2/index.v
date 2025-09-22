module tb_compare_wire_reg;

 reg [3:0]a;
wire[3:0] c;
reg[7:0] b;
always@*
assign a= b[3:0];
assign c[3]=b[3];
assign c[2:0]=b[2:0];


initial begin

$monitor(" %d %d %b ", $realtime, b,a,c);
end
initial begin 
 b=8'b00011101; #5;
 b=1; #5;
 b=-9; #5;
end
endmodule
