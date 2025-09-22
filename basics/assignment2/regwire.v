module wirew(output wire y, input wire a, b);
assign y = a & b; 
endmodule

module regw(output reg y, input reg a,b);
always@*y=a&b;
endmodule

//testbench
module tb_compare_wire_reg;
reg a, b;
wire y_wire;
wire y_reg;
wirew U1(.y(y_wire), .a(a), .b(b));
regw U2(.y(y_reg), .a(a), .b(b));
initial begin
$monitor("%b %b | %b %b", $time, a, b, y_wire, y_reg);
a=0; b=0; #5;
a=0; b=1; #5;
a=1; b=0; #5;
a=1; b=1; #5;
end
endmodule
