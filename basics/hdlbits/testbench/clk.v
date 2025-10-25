module top_module ( );
    reg clk=0;
    dut uut(clk);
    always #5 clk=~clk;

endmodule
