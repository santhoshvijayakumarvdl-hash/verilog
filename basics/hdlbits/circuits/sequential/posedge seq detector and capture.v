module top_module (
    input clk,
    input reset,
    input [31:0] in,
    output reg [31:0] out
);
    reg [31:0] q;
  always @(posedge clk) begin
      q <= in;
      if (reset)
      out <= 32'd0;
      else out <= out | (~in & q);
  end
endmodule
