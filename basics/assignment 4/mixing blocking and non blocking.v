module mux4(
  
  
  output reg   y1,
  output reg y2,y3

  
       );
       reg a;
       initial begin 
   
   #5 y1=0; y1<=1; 
   end
       
   
    initial begin
   
    $monitor(" a=%b  %b %b %b %b  ",$realtime,a,y1,y2,y3);
    End
