module mux4(
  input a,
  
  output reg[15:0] y1,y2

  
       );
       
   
    initial begin
   
    $monitor(" a=%b  %b %b  ",$realtime,a,y1,y2);
    end
    initial begin 
    y1=16'h0f0f;
    end
    always@(*)
 y2=y1+1;
    
    
 initial begin 
 y1=y1+1;
 end 
 
 
endmodule
