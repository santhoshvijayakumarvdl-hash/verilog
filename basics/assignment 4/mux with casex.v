module fiyf(

  output reg out
);
reg i0,i1,i2,i3,s0,s1;
initial begin
i0=0;i1=1;i2=0;i3=0;s1=1'bx;s0=0;
casex({s1,s0})
0:out=i0;
1:out=i1;
2:out=i2;
3:out=i3;
endcase

    

        
end
endmodule
