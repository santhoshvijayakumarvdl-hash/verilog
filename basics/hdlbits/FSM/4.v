module top_module(
    input clk,
    input areset,    // Asynchronous reset to state B
    input in,
    output out);//  

    parameter A=0, B=1, C=2,D=3;
    reg[3:0] state, next_state;

    always @(*) begin 
         case(state)// This is a sequential always block
       A:next_state = in? B:A; 
       B:next_state = in? B:C;
       C:next_state = in? D:A;
        D:next_state = in? B:C; 
             
        endcase// This is a combinational always block
        
        
    end

    always @(posedge clk, posedge areset) begin  
        if(areset) state<=A;
        else state<=next_state;

    end

    // Output logic
    assign out = (state ==D);

endmodule
