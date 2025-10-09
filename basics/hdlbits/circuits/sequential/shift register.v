module top_module(
    input clk,
    input areset,   // async active-high reset to zero
    input load,
    input ena,
    input [3:0] data,
    output reg [3:0] q
);

    always @(posedge clk or posedge areset) begin
        if (areset)
            q <= 4'b0000;             // Asynchronous reset
        else if (load)
            q <= data;                // Load new 4-bit data
        else if (ena)
            q <= q>>1 ;      // Shift right by 1, fill MSB with 0
    end

endmodule
