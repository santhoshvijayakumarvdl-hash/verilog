module fiyf(
  output reg [3:0] count
 
);
  initial begin 
  count=4'b0001;
  while(count[3]==0)
 #5 count= count<<1;
 end
  
  
endmodule
