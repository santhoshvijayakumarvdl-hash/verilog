module fiyf(

  output reg out
);
reg i0,i1,i2,i3,s0,s1;
initial begin
i0=0;i1=1;i2=0;i3=0;s1=0;s0=1;
if(s1==0)
    if(s0==0)
        out=i0;
    else
        out=i1;
else
    if(s0==0)
        out=i2;
    else
        out=i3;
        
end
endmodule
