module fiyf(

  output reg[2:0] out
);
reg i0,i1,i2,i3;
initial begin
i0=0;i1=1;i2=0;i3=0;
if(i3==1)
        out=3;
if(i2==1)
        out=2;
if(i1==1)
        out=1;
if(i0==1)
        out=0;
    

        
end
endmodule
