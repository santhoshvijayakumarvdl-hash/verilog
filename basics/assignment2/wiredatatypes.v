module wirew(output wire y,h,i,f,g,  input wire a, b);
wand f;
wor g;
tri h;
triand i;
assign y = a & b; 
assign y=a|b;
assign h=a;
assign i=b;
endmodule

//testbench

module tb_compare_wire_reg;
reg a, b;
wire y_wire;
wire f,i;
wire h;
wire i;
wirew U1(.y(y_wire), .a(a), .b(b), .h(h),.i(i),.f(f),.g(g));
initial begin
$monitor(" %b %b | %b %b %b %b", $time, a, b, y_wire,f,g);
a=0; b=0; #5;
a=1'bz; b=1; #5;
a=1; b=0; #5;
a=1; b=1; #5;
end
endmodule
