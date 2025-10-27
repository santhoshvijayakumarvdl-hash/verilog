module top_module (
    input clk,
    input d,
    output q
);
reg q1,q2;
    always@(posedge clk)
        q1<=d;
    always@(negedge clk)
        q2<=d;
    always@(*)
        if(clk)
            q<=q1;
    	else q<=q2;
        
endmodule
