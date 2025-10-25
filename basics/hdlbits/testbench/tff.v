module top_module ();
    reg clk=0;
    reg reset,t;
    wire q;
    always #5 clk=~clk;
    
    tff uut(clk,reset,t,q);
    initial begin
        reset=1;
        #10 reset=0; t=0;
    end
endmodule
