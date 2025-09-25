module desi(
  input [8:0] a,
  output  ep,op
  //output carry
       );
    
     assign ep =^a;
     assign op=~ep;
    
    assign a=9'b1000111111;

   
    initial begin
    $monitor(" a=%b b=%b   %b %b  ",$realtime,a,ep,op);
    end
