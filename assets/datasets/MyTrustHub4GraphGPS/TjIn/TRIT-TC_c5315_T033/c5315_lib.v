// OR gates
module or2s1 (input DIN1, input DIN2, output Q);
    or (Q, DIN1, DIN2);
endmodule

module or3s1 (input DIN1, input DIN2, input DIN3, output Q);
    or (Q, DIN1, DIN2, DIN3);
endmodule

module or4s1 (input DIN1, input DIN2, input DIN3, input DIN4, output Q);
    or (Q, DIN1, DIN2, DIN3, DIN4);
endmodule

module or5s1 (input DIN1, input DIN2, input DIN3, input DIN4, input DIN5, output Q);
    or (Q, DIN1, DIN2, DIN3, DIN4, DIN5);
endmodule

// NOR gates
module nor2s1 (input DIN1, input DIN2, output Q);
    nor (Q, DIN1, DIN2);
endmodule

module nor3s1 (input DIN1, input DIN2, input DIN3, output Q);
    nor (Q, DIN1, DIN2, DIN3);
endmodule

module nor4s1 (input DIN1, input DIN2, input DIN3, input DIN4, output Q);
    nor (Q, DIN1, DIN2, DIN3, DIN4);
endmodule

// AND gates
module and2s1 (input DIN1, input DIN2, output Q);
    and (Q, DIN1, DIN2);
endmodule


module and3s1 (input DIN1, input DIN2, input DIN3, output Q);
    and (Q, DIN1, DIN2, DIN3);
endmodule


module and4s1 (input DIN1, input DIN2, input DIN3, input DIN4, output Q);
    and (Q, DIN1, DIN2, DIN3, DIN4);
endmodule

module and5s1 (input DIN1, input DIN2, input DIN3, input DIN4, input DIN5, output Q);
    and (Q, DIN1, DIN2, DIN3, DIN4, DIN5);
endmodule

module and9s1 (input DIN1, input DIN2, input DIN3, input DIN4, input DIN5, input DIN6, input DIN7, input DIN8, input DIN9, output Q);
    and (Q, DIN1, DIN2, DIN3, DIN4, DIN5, DIN6, DIN7, DIN8, DIN9);
endmodule

// NAND gates
module nnd2s1 (input DIN1, input DIN2, output Q);
    nand (Q, DIN1, DIN2);
endmodule

// Inverters
module hi1s1 (input DIN, output Q);
    not (Q, DIN);
endmodule

//Non-inverting buffer
module nb1s1 (input DIN, output Q);
    buf (Q, DIN);
endmodule
