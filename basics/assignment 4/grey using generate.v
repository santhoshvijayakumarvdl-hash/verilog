module grey #(parameter N=4)(
output[N-1:0] b,
input [N-1:0] a
);
assign b[N-1]=a[N-1];
assign a=4'b0001;

  genvar i;
  generate
    for (i =N-2;i>=0; i = i - 1) begin
     assign b[i]=a[i]^a[i+1];
         
    end
  endgenerate
endmodule
