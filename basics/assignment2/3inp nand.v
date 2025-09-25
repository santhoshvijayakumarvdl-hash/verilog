module array;
  reg [3:0] a, b;
  wire[3:0] y;    
  nand n1 [3:0] (y, a, b);
  initial begin  
   a = 4'b0000; b = 4'b1111; #10;
   a = 4'b1010; b = 4'b1100; #10;
   a = 4'b1111; b = 4'b1111; #10;
   a = 4'b0101; b = 4'b1010; #10;
   $finish;
  end
  initial begin
  $monitor($time, " a=%b b=%b y=%b", a, b, y);
  end
endmodule
