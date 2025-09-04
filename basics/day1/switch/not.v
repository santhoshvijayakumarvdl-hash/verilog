module notg(input a,output out );
supply1 vdd;
supply0 gnd;
  pmos p1(out,vdd,a);
  nmos n1(out,gnd,a);
endmodule
