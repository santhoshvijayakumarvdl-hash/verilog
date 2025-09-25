module fiyf(
 

    );
    reg clk;
    
    initial begin
    clk=0;
    forever #50 clk=~clk;
   
    $monitor("%b",$time,clk);
 end
    
endmodule
