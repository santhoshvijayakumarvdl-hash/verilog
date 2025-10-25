module top_module (
    input clk,
    input a,
    output [3:0] q );
    always@(posedge clk)begin q<=4;
        if(~a)
            if(q<6)
            q<=q+1;
        	else 
                q<=0;
    end
endmodule
