module fiyf(
	
  output reg[3:0] q
);
reg[3:0] d;
reg clk;
reg rst;

initial begin 
d=4'b1001;
clk=0;
forever #50 clk=~clk;
end
initial begin
rst=0;
#150 rst=1;

end

always@(posedge clk) begin
if(rst)
#5 q<=4'b0;
else
q<=d;
end
endmodule
