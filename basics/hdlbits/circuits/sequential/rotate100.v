module top_module(
    input clk,
    input load,
    input [1:0] ena,
    input [99:0] data,
    output reg [99:0] q); 
    always@(posedge clk)
        if(load)
            q<=data;
        else if(ena==0&&ena==1)
            q<=q;
    	else if(ena==1)
            q<= q>>1;
    	else if(ena==2)
            q<= q<<1;
    	
            

endmodule
