module fiyf(
 
 output reg[3:0] count,cnt
    );
    reg[3:0] i;
   
   initial begin
    i=0; 
   cnt=0;
   count=4'b1110;
   while(i<5)begin
   if(count[i]==1)
   cnt=cnt+1;
   i=i+1;
   end
    
    
  
   
    $monitor("%b %b",$time,count,cnt);
 End
