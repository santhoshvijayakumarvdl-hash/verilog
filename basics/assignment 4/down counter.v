module fiyf(

  output reg [7:0] count
 
);
reg [4:0] i;
initial begin i=10;
while(i>0)
#5 i=i-1;
end
  
  
  
  
endmodule
