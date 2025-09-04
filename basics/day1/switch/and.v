module and_gate(input a, b, output c);
  supply1 vdd;
  supply0 gnd;
  wire w1, w2;
  pmos p1(w1, vdd, a);
  pmos p2(w2, vdd, b);
  nmos n1(w2, gnd, b);
  nmos n0(w1, nd, a);
  pmos p3(c, vdd, n);
  nmos n2(c, gnd, n);
endmodule
