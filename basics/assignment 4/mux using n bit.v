module mux #(parameter N = 4)(
  input  [N-1:0] a, b,
  input  sel,
  output [N-1:0] c
);
assign a=6;assign b=1;
assign sel=1;

  genvar i;
  generate
    for (i = 0; i < N; i = i + 1) begin 
      assign c[i] = (sel) ? b[i] : a[i];
    end
  endgenerate
endmodule
