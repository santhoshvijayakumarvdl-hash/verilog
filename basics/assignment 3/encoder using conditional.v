module mux4(
  input[3:0] a,
  
  output[1:0] out
  //output carry
       );
    assign a=4'b1000;

     assign out= (a==4'b1000)?2'b11:(a==4'b0100)?2'b10:(a==4'b0010)?2'b01:(a==4'b0001)?2'b00:(4'bzzzz);
     
    
   // assign a=99;
    //assign b=99;
    

   
    initial begin
    $monitor(" a=%b  %b  ",$realtime,a,out);
    end
    
endmodule
