module desi(
  input [3:0] a,
  output [3:0] ceq,clt,cgt
  //output carry
       );
    
     assign ceq = a>>1;
     assign clt= a<<1;;
     assign a=4'b1111;
     
    
   // assign a=99;
    //assign b=99;
    

   
    initial begin
    $monitor(" a=%b b=%b   %b   ",$realtime,a,ceq,clt);
    end
    
endmodule
