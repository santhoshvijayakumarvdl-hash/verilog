module fiyf(
 
 output reg[128:0] count,cnt
    );
    reg[128:0] i;
   
   initial begin
   i=0;
   repeat(128) begin 
   
   count=0;
   if(i%2==0) begin
   count[i]=0;
   end
   else begin
   count[i]=1;
   end
   i=i+1;
   end
    
    
  
   
    $monitor("%d %d",$time,count,cnt);
 end

    
endmodule
