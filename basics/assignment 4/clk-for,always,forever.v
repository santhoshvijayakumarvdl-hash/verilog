module fiyf(

  output reg [7:0] count
 
);
reg clk,clk1,clk2;
reg[4:0] i;
initial begin 
clk=0;
forever #5 clk=~clk;
end
initial begin
clk1=0;
repeat(8)
#5 clk1=~clk1;
end
initial begin 
clk2=0;
i=0;
for(i=0;i<8;i=i+1)
#5 clk2=~clk2;
end
  
  
  
  
endmodule
