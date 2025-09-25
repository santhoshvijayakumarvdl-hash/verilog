module desi(
  input [2:0] a,b,c,
  output [5:0] y
  //output carry
       );
    
     assign y = {a, {4{b[0]}}, c[1]};
    
     assign a=1'b1;
     assign b=3'b111;
     assign c=3'b101;

   
    initial begin
    $monitor(" a=%b b=%b   %b %b  ",$realtime,a,b,c,y);
    end
    
endmodule

