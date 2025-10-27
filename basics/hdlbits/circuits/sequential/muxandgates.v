module top_module (
    input clk,
    input x,
    output z
); 
    reg[2:0] d;
    wire[2:0] q;
    
    always@(posedge clk)begin
        q<=d;end
        xor(d[0],q[0],x);
        and(d[1],~q[1],x);
        or(d[2],~q[2],x);
    nor(z,q[0],q[1],q[2]);        
        

endmodule
