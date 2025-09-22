module wirew;
  reg [3:0] mem [3:0];  
  initial begin 
    mem[3] = 4'b0001;
    mem[0] = 4'b0000;
    $display("t=%0t  mem[3]=%b  mem[0]=%b", $time, mem[3], mem[0]);
    #5 mem[1] = 4'b1010;
    $display("t=%0t  mem[1]=%b", $time, mem[1]);
    #5 mem[2] = 4'b1111;
    $display("t=%0t  mem[2]=%b", $time, mem[2]);
    #5 $finish;
  end
endmodule
