module jjnn(input d,clk,
output reg out
    );
    initial begin
    out=0; end
    
    always@(posedge clk) begin
      out<=d;
    endcase
    end
