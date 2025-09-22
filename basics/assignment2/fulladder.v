module fulladder(a,b,c,sum,carry);
input a,b,c;
output sum,carry;
wire x,y,z,d;
xor(d,a,b);
xor(sum,d,c);
and(x,a,b);
and(y,b,c);
and(z,c,a);
or(carry,x,y,z);
endmodule
//testbench
module ha_tb;
reg a,b,c;
wire sum,carry;
fulladder uut(a,b,c,sum,carry);
initial begin
a=0;b=0;c=0;
#5 a=1;b=0;c=1;
#5 a=1;b=0;c=0;
#5 a=1;b=1;c=1;
end
initial begin
$monitor($time,"a=%b b=%b c=%b sum=%b carry=%c",a,b,c,sum,carry);
end
endmodule
