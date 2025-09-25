module fiyf(
 
 output reg[3:0] count
    );
   
    
   initial begin
   count=0;
    repeat(8) begin
   #5 count=count+1;
    
    
  
   
    $monitor("%b",$time,count);
 end
 end
    
endmodule
