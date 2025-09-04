module nortb;
reg a, b;
wire c;
  norg dut (.a(a), .b(b), .c(out));
initial begin
$monitor("time=%0t | a=%b b=%b => c=%b", $time, a, b, c);
    a=0; b=0; #10;
    a=0; b=1; #10;
    a=1; b=0; #10;
    a=1; b=1; #10;
$finish;
end
endmodule
