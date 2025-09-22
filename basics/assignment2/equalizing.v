module wirew(output reg[7:0] a, input [7:0] b  );
 

always@* a=b;
endmodule

//testbench
module tb_compare_wire_reg;
reg [7:0] b;
wire [7:0] a;
wirew U1( .a(a),.b(b));
initial begin
$monitor(" %b %b ", $time, a, b);
end
initial begin 
 b=1; #5;
 b=8; #5;
 b=9; #5;
end
endmodule
