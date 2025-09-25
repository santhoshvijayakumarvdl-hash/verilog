module mux4(
  input a,
  
  output reg y1,
  output  reg y2
  
       );
 
   
   
initial begin 
 y1=~a;
 end
 always@(*)
 assign y2= ~a;
 assign a=1;
 
    

   
    initial begin
   
    $monitor(" a=%b  %b %b ",$realtime,a,y2,y1);
    end
    
endmodule
