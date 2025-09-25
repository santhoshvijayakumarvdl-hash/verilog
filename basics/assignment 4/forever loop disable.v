module fiyf(
  output reg [128:0] count,
  output reg [7:0] cnt
);
  integer i;
  reg clk;

  
  initial begin
    clk = 0;
    forever #50 clk = ~clk;
  end

  initial begin
   #500 $monitor("simulation finished");
   
    $finish;
  end
endmodule
