module mux4(
  input a,
  
  output reg  y1

  
       );
       
   
    initial begin
   
    $monitor(" a=%b  %b %b  ",$realtime,a,y1);
    end
    initial begin 
    y1=0;
    forever #5 y1=~y1;
    end
    
   
 
 
endmodule
