module fiyf(
 
 output reg[3:0] count,cnt
    );
    reg[3:0] i;
   
   initial begin
   
   cnt=0;
   count=4'b1110;
   for(i=0;i<5;i=i+1)begin
   if(count[i]==1)
   cnt=cnt+1;
  
   end
    
    
  
   
    $monitor("%b %b",$time,count,cnt);
 end

    
endmodule
