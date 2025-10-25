module top_module();
    reg clk=0;
    reg in;
    reg [2:0] s;
    wire out;
    always #5 clk=~clk;
    q7 uut(clk,in,s,out);
    initial begin
        s=2;in=0;
        #10 s=6;
        #10 s=2;in=1;
        #10 s=7;in=0;
        #10 s=0;in=1;
        #30 in=0;
    end

endmodule
