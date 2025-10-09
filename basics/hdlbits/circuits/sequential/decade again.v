module top_module (
    input clk,
    input reset,        // Synchronous active-high reset
    output [3:0] q);
    
    always@(posedge clk)
        if(reset)
            q<=1;
    else if(q>=0&&q<10)
        	q<=q+1;
    else 
        	q<=1;
    
   

endmodule
