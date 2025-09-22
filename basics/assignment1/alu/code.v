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

module addsub(a,b,as,sum,carry);
input[3:0] a,b;
input as;
output[3:0] sum;
output carry;
wire[3:0] bx ,c;
xor(bx[0],b[0],as);
xor(bx[1],b[1],as);
xor(bx[2],b[2],as);
xor(bx[3],b[3],as);
fulladder f1(a[0],bx[0],as,sum[0],c[0]);
fulladder f2(a[1],bx[1],c[0],sum[1],c[1]);
fulladder f3(a[2],bx[2],c[1],sum[2],c[2]);
fulladder f4(a[3],bx[3],c[2],sum[3],carry);
endmodule

module alu(
    input  [1:0] s,
    input  [3:0] a, b,
    output reg [3:0] out
);
    wire [3:0] sum;
    wire [3:0] org_out, andg_out;
    wire carry;
    reg as;
    always @(*) begin
     case (s)
     2'b00: as = 0;  
     2'b01: as = 1;  
        endcase
    end
    addsub A(a, b, as, sum, carry);
    org    O(a, b, org_out, andg_out);

    always @(*) begin
 case (s)
 2'b00: out = sum;        
 2'b01: out = sum;         
 2'b10: out = org_out;    
 2'b11: out = andg_out;    
  endcase
    end

endmodule


//testbench
`timescale 1ns/1ps

module alu_tb;
 reg [3:0] a, b;
 reg [1:0] s;
 wire [3:0] out;
  alu uut (s,a,b,out);
 

    initial begin
        a = 7;
        b = 4;
  s = 0; #10;   
  s = 1; #10;   
   s = 2; #10;   
   s = 3; #10;   
$finish;
    end

    initial begin
        $monitor(" s=%b a=%b  b=%b out=%b", $time, s, a, b, out);
    end

endmodule
