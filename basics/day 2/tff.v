module jjnn(input t,clk,
output reg out
    );
    initial begin
    out=0; end
    
    always@(posedge clk) begin
      case({t})
    1'b0:out<=~out;
    1'b1:out<=out;
    endcase
    end
