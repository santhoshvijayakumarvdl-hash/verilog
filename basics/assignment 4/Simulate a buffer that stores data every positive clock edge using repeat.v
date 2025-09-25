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
    i = 0;
    count = 0;
    cnt = 0;

    repeat (129) begin
      @(posedge clk);    
      if (i % 2 == 0)
        count[i] = 0;
      else begin
        count[i] = 1;
       
      end
      i = i + 1;
    end

    $display("Final vector = %b", count);
   
    $finish;
  end
endmodule
