module desi(
    input[4:0] a,
    input[4:0] b,
    output[4:0] out
    );
    assign a=5;
    assign b=5;
    assign out=a&b;
    initial begin
    $display(" a=%b b=%b out=%b",$realtime,a,b,out);
    end
    
endmodule
