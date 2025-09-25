module mux4(
  input a,s0,s1,en,
  
  output y3,y2,y1,y0
  
  //output carry
  
       );
 
    assign en=0;
    assign a=1;
    assign s0=1;
    assign s1=1;
    assign y0=en&~s0&~s1&a;
    assign y1=en&s0&~s1&a;assign y2=en&~s0&s1&a;assign y3=en&s0&s1&a;
   

 //else begin 
 //assign out=4'bzzzz;


 
     
    
   // assign a=99;
    //assign b=99;
    

   
    initial begin
    $monitor(" a=%b  %b %b %b %b ",$realtime,a,y3,y2,y1,y0,s0,s1);
    end
    
endmodule

