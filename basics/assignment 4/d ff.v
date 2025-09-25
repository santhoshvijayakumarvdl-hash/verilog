
module mux4(
input clk,
  input[3:0]  d,
  output reg[3:0]  q    
 
  
);
 
 always@(posedge clk)
 q<=d;

 
 

endmodule
module muv; reg[3:0] d; wire[3:0] q; reg clk;
 mux4 uut(clk,d,q); 
 initial begin clk=0;
  forever #5 clk=~clk; 
  end
 initial begin
  d=0; #20 d=2; #30 d=4; #30 d=9
 ;
  $monitor(" a=%b %b ",$realtime,d,q); 
  end endmodule
