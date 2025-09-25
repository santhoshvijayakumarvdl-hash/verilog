module mux4(
  input[3:0] a,
  
  output[1:0] out,
  output valid
  //output carry
       );
    assign a=4'b0000;
    assign valid  = a[3] | a[2] | a[1] | a[0];
//if (|a) begin
     assign out = a[3] ? 2'b11 :a[2] ? 2'b10 :a[1] ? 2'b01 :a[0] ? 2'b00 : 2'b00; // De

 

 
     
    

    

   
    initial begin
    $monitor(" a=%b  %b %b  ",$realtime,a,out,valid);
    end
    
endmodule
