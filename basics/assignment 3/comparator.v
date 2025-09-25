module desi(
  input [8:0] a,b,
  output  ceq,clt,cgt
  //output carry
       );
    
     assign ceq = a==b;
     assign clt= a<b;
     assign cgt=a>b;;
    
    assign a=99;
    assign b=99;
    

   
    initial begin
    $monitor(" a=%b b=%b   %b %b %b  ",$realtime,a,b,ceq,clt,cgt);
    end
    
endmodule
