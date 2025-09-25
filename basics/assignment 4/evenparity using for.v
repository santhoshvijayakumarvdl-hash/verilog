 
module fiyf(

  output reg [7:0] count
 
);
reg[7:0] i;
reg ev;
  initial begin 
  count=8'b11110001;
  ev=0;
  for(i=0;i<8;i=i+1)
     #5 ev=ev^count[i];
  end
