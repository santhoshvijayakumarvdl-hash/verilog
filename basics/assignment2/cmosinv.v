module cmos_inverter (input a,output y   );
  supply1 vdd;     supply0 gnd;     
  pmos p1 (y, vdd, a);
  nmos n1 (y, gnd, a);
endmodule

module tb_cmos_inverter;
  reg a;
  wire y;
cmos_inverter uut (.a(a), .y(y));
initial begin
    $monitor("t=%0t a=%b -> y=%b", $time, a, y);
    a = 0; #10;   
    a = 1; #10;   
    a = 0; #10;   
    a = 1; #10;   
    #10 $finish;
  end
endmodule
