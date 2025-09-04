module xorswitch(input a,b , output out);
wire w1,w2,w3,w4,w5;
supply1 vdd;
supply0 gnd;
  pmos i1(w2,vdd,a);
  nmos i2(w2,gnd,a);
  pmos i3(w3,vdd,b);
  nmos i4(w3,gnd,b);
  pmos p1(w1,vdd,a);
  pmos p2(w1,vdd,b);
  pmos p3(out,n1,n2);
  pmos p4(out,n1,n3);
  nmos (out,n4,a);
  nmos (w4,gnd,b);
  nmos (out,n5,n2);
  nmos (w5,gnd,n3);
endmodule
