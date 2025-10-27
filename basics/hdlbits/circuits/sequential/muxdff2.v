module top_module (
    input clk,
    input w, R, E, L,
    output Q
);
	wire out1;
    wire out=(~E&Q)|(E&w);
    wire out2=(~L&out)|(L&R);
    always@(posedge clk)
        out1<=out2;
    assign Q=out1;
    
       
    

endmodule


