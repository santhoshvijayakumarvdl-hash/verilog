module jjnn(input j,k,clk,
output reg out
    );
    initial begin
    out=0; end
    
    always@(posedge clk) begin
    case({j,k})
    2'b00:out<=out;
    2'b01:out<=0;
    2'b10:out<=1;
    2'b11:out<=~out;
    endcase
    end

      
      //testbench

      
      module tb;
reg j,k,clk=0;
wire out;
jjnn uut(j,k,clk,out);
initial begin
clk=0;
end
always@(*) begin
forever #5 clk=~clk;
end
initial begin
#5 j=0 ; k=0;
#5 j=0 ; k=1;
#5 j=1 ; k=0;
#5 j=1 ; k=1;
end 
endmodule
