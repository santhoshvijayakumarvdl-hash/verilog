module fulladder(a,b,c,d,s0,s1,out);
input a,b,c,d,s0,s1;
output out;
wire x,y,z,e,s1b,s0b;
not(s1b,s1);
not(s0b,s0);
and(x,s0b,s1b,a);
and(y,s0,s1b,b);
and(z,s0b,s1,c);
and(e,s0,s1,d);
or(out,x,y,z,e);
endmodule
//testbench
module ha_tb;
reg a,b,c,d,s0,s1;
wire out;
fulladder uut(a,b,c,d,s0,s1,out);
initial begin
a=1;b=0;c=1;d=0;
#5 s0=0;s1=0;
#5 s0=1;s1=0;
#5 s0=0;s1=1;
#5 s0=1;s1=1;

end
initial begin
$monitor($time,"a=%b b=%b c=%b d=%b s0=%b s1=%b",a,b,c,d,s0,s1,out);
end
endmodule
