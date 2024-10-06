// NOR gates
module nor2s1 (input DIN1, input DIN2, output Q);
    nor (Q, DIN1, DIN2);
endmodule

// AND gates
module and2s1 (input DIN1, input DIN2, output Q);
    and (Q, DIN1, DIN2);
endmodule

// Inverters
module hi1s1 (input DIN, output Q);
    not (Q, DIN);
endmodule
