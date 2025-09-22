primitive udp_and2 (y, a, b);
output y;
 input  a, b;
 table
  // a b : y
     0 0 : 0;
     0 1 : 0;
     1 0 : 0;
     1 1 : 1;
 endtable
endprimitive

//testbench

module tb_cmos_inverter;
  reg a,b;
  wire y;
udp_and2 uut(y,a,b);
initial begin
    $monitor("t=%0t a=%b  b=%b  y=%b", $time, a,b, y);
    a = 0; b=0; #10;   
    a = 0; b=1;#10;   
    a = 1; b=0;#10;   
    a = 1; b=1; #10;   
    #10 $finish;
  end
