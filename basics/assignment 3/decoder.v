module mux4(
  input a,b,
  
  output y3,y2,y1,y0,
  output valid
  //output carry
  
       );
 
    
    assign y0=a|b;
    assign y1=a|(~b);
    assign y2=(~a)|b;
    assign y3=(~a)|(~b);
    assign a=1;
    assign b=1;
   

 //else begin 
 //assign out=4'bzzzz;


 
     
    
   // assign a=99;
    //assign b=99;
    

   
    initial begin
    $monitor(" a=%b  %b %b %b %b ",$realtime,a,b,y3,y2,y1,y0);
    end
    
endmodule
