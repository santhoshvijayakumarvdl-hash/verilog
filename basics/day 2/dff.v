module jjnn(input d,clk,
output reg out
    );
    initial begin
    out=0; end
    
    always@(posedge clk) begin
      out<=d;
    endcase
    end
    //testbench
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
#5 d=0 ;
#5 d=1 ;
end 
endmodule
