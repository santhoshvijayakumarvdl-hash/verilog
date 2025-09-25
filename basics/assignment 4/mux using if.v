module fiyf(

  output reg out
);
reg i0,i1,s;
initial begin
i0=0;i1=1;s=0; 
if(s==0)
#5 out=i0;
if(s==1)
#5 out=i1;
end 
endmodule
