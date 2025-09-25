module desi(
    );
    wire a,b;
    
    assign a=1;
    assign b=0;
    assign #5 out=a+b;
    
    initial begin
    $monitor(" a=%b b=%b out=%b",$realtime,a,b,out);
    end
    
endmodule
