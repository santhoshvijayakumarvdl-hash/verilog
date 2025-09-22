module nor(a,b,out);
input a,b;
output out;
supply1 vdd;
supply0 gnd;
wire w;
pmos(out,vdd,a);
pmos(out,vdd,b);
nmos(out,w,a);
nmos(w,gnd,b);

endmodule
module nor(a,b,out);
input a,b;
output out;
nor(out,a,b);
endmodule
