module desi(
  input [3:0] a,b,
  output [3:0] t,y
  //output carry
       );
      // wire c_in=1;
       assign a=15;
       assign b=15;
       assign t=a/b;
       assign y=a%b;
   
    initial begin
    $monitor(" a=%b b=%b   %b %b  ",$realtime,a,b,t,y);
    end
    
endmodule
