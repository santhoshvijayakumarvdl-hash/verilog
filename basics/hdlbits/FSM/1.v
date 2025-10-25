module top_module(
    input clk,
    input areset,    // Asynchronous reset to state B
    input in,
    output out);//  

    parameter A=0, B=1; 
    reg state, next_state;

    always @(*) begin 
         case(state)// This is a sequential always block
       B:next_state = in? B:A; 
       A:next_state = in? A:B; 
        endcase// This is a combinational always block
        
        
    end

    always @(posedge clk, posedge areset) begin  
        if(areset) state<=B;
        else state<=next_state;

    end

    // Output logic
    assign out = (state ==B);

endmodule
