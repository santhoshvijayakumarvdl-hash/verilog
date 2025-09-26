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
      module tb;
reg d,clk=0;
wire out;
              jjnn uut(d,clk,out);
initial begin
clk=0;
end
always@(*) begin
forever #5 clk=~clk;
end
initial begin
#5 t=0 ;
#5 t=1 ;
end 
endmodule
