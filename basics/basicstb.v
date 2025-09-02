module addtb;

  reg a, b, c;          
  wire w, x, y, z;      

  
  add uut (
    .a(a),
    .b(b),
    .c(c),
    .w(w),
    .x(x),
    .y(y),
    .z(z)
  );

  initial begin
    
    $monitor($time, " a=%b b=%b c=%b -> w=%b x=%b y=%b z=%b", a, b, c, w, x, y, z);

    
    a = 0; b = 0; c = 0;
    #5 a = 1; b = 1; c = 1;
    #5 a = 1; b = 0; c = 0;
    #5 a = 1; b = 0; c = 1;
    #5 a = 1; b = 1; c = 0;
    #5 $finish;
  end

endmodule
