. module nand_gate_cmos (
    input A, B,
    output Y
);

    supply1 Vdd;
    supply0 Gnd;

    wire w;

    pmos (Y, Vdd, A);    
    pmos (Y, w, B);    
    nmos (Y, Gnd, A);    
   nmos (Y, Gnd, B);   

endmodule
