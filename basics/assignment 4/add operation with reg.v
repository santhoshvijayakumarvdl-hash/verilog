module mux4(
  input a,
  
  output reg[15:0] y1

  
       );
       
   
    initial begin
   
    $monitor(" a=%b  %b  ",$realtime,a,y1);
    end
    initial begin 
    y1=16'h0f0f;
    end
    
    always@(*)
 y1=y1+1;
 
 
endmodule
