module desi(
    );
    wire[4:0] a,b;
    
    assign a=5;
    assign b=5;
    wire[4:0] out=a|b;
    
    initial begin
    $display(" a=%b b=%b out=%b",$realtime,a,b,out);
    end
    
endmodule
