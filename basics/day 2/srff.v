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
