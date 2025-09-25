module mux4(
  input a,b,c,d,
  input s1,s0,
  output out
  //output carry
       );
    assign a=1;
    assign b=0;
    assign c=0;
    assign d=1;
    assign s1=1;
    assign s0=1;
     assign out= s1? (s0?a:b):(s0?c:d);


   
    initial begin
    $monitor(" a=%b b=%b  %b %b  %b %b %b  ",$realtime,a,b,c,d,s1,s0,out);
    end
    
endmodule
