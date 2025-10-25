module top_module (
    input clk,
    input enable,
    input S,
    input A, B, C,
    output Z ); 
    wire[3:0] c={A,B,C};
    reg[7:0] q;
    always@(posedge clk) begin
        if(enable) 
            q<={q[6:0],S};
       
    end 
assign Z=q[c];
        
        
        
        

endmodule
