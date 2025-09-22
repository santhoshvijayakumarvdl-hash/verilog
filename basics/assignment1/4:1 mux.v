module mux4(i0,i1,i2,i3,s0,s1,y);
input i0,i1,i2,i3,s0,s1;
output y;
wire x,z,a,c;
not(s1b,s1);
not(s0b,s0);
and(x,s0b,s1b,i0);
and(z,s0,s1b,i1);
and(a,s0b,s1,i2);
and(c,s0,s1,i3);
or(y,x,a,c,z);
endmodule

//testbench
module mux8(i0,i1,i2,i3,i4,i5,i6,i7,s0,s1,s2,y);
input i0,i1,i2,i3,i4,i5,i6,i7,s0,s1,s2;
wire y1,y2,s2bar,x,z;
output y;
mux4 m1(i0,i1,i2,i3,s0,s1,y1);
mux4 m2(i4,i5,i6,i7,s0,s1,y2);
not(s2bar,s2);
and(x,s2bar,y1);
and(z,s2,y2);
or(y,x,z);
endmodule

module muxtb;
 reg i0,i1,i2,i3,i4,i5,i6,i7;
 reg  s0,s1,s2;
 wire  out;
  mux8 uut (i0,i1,i2,i3,i4,i5,i6,i7,s0,s1,s2,out);
 

    initial begin
       i0=0;i1=1;i2=0;i3=0;i4=0;i5=1;i6=0;i7=1;
  s0 = 0; s1=0; s2=0; #10;   
 s0 = 0; s1=0; s2=1; #10;   
   s0 = 0; s1=1; s2=0;#10;   
  s0 = 1; s1=0; s2=0; #10;   
$finish;
    end

    initial begin
        $monitor(" s0=%b s1=%b s2=%b  i0=%b i1=%b i2=%b i3=%b i4=%b i5=%b i6=%b i7=%b y=%b", $time, i0,i1,i2,i3,i4,i5,i6,i7,s0,s1,s2,out);
    end
endmodule
