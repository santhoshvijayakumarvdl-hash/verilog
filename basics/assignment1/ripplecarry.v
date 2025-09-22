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

module add(a,b,cin,sum,carry);
input[3:0] a,b;
output[3:0] sum;
input cin;
wire[3:0] c;
output carry;

fulladder f1(a[0],b[0],cin,sum[0],c[0]);
fulladder f2(a[1],b[1],c[0],sum[1],c[1]);
fulladder f3(a[2],b[2],c[1],sum[2],c[2]);
fulladder f4(a[3],b[3],c[2],sum[3],carry);
endmodule

//testbench

module addtb;
reg[3:0] a,b;
reg cin;
wire[3:0] sum;
wire carry;
add uut(a,b,cin,sum,carry);
initial begin
a=4;b=5;cin=0;
#5 a=8;b=9;
#5 a=7;b=9;
#5 a=6;b=7;
$finish;
end

initial begin
$monitor($time," a=%b b=%b sum=%b carry=%b",a,b,sum,carry);
End
