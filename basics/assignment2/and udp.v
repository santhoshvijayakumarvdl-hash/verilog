primitive udp_and2 (y, a, b,c);
output y;
 input  a, b,c;
 table
  // a b c : y
     0 0 0: 0;
     0 0 1: 0;
     0 1 0: 1;
     0 1 1: 0;
     1 0 0: 1;
     1 0 1: 1;
     1 1 0: 1;
     1 1 1: 1;// x+yz`
     
 endtable
endprimitive

//testbench
module tb_cmos_inverter;
  reg a,b,c;
  wire y;
udp_and2 uut(y,a,b,c);
initial begin
    $monitor("t=%0t a=%b  b=%b c=%b  y=%b", $time, a,b,c, y);
    a = 0; b=0;c=0; #10;   
    a = 0; b=1;c=1;#10;   
    a = 1; b=0;c=1;#10;   
    a = 1; b=1;c=0; #10;   
    #10 $finish;
  end
endmodule
