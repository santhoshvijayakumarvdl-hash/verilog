module jjnn(input j,k,clk,
output reg out
    );
    initial begin
    out=0; end
    
    always@(posedge clk) begin
      out<=d;
    endcase
    end
