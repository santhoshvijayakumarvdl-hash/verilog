module top_module (
    input [3:0] SW,
    input [3:0] KEY,
    output [3:0] LEDR
); 
    wire out0,out1,out2,out3;
    MUXDFF(KEY[0],KEY[1],KEY[2],LEDR[3],KEY[3],SW[3],out0,LEDR[3]);
    MUXDFF(KEY[0],KEY[1],KEY[2],LEDR[2],LEDR[3],SW[2],out1,LEDR[2]);
    MUXDFF(KEY[0],KEY[1],KEY[2],LEDR[1],LEDR[2],SW[1],out2,LEDR[1]);
    MUXDFF(KEY[0],KEY[1],KEY[2],LEDR[0],LEDR[1],SW[0],out3,LEDR[0]);

endmodule

           module MUXDFF (input clk,s1,s2,in0,in1,i1,output reg out1,output led);
    wire out=(~s1&in0)|(s1&in1);
    wire out2=(~s2&out)|(s2&i1);
    always@(posedge clk)
        out1<=out2;
    assign led=out1;
    
       
    

endmodule
