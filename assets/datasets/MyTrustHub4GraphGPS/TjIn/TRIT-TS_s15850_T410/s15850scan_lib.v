// OR gates
module or2s3 (input DIN1, input DIN2, output Q);
    or (Q, DIN1, DIN2);
endmodule

module or3s3 (input DIN1, input DIN2, input DIN3, output Q);
    or (Q, DIN1, DIN2, DIN3);
endmodule

module or4s3 (input DIN1, input DIN2, input DIN3, input DIN4, output Q);
    or (Q, DIN1, DIN2, DIN3, DIN4);
endmodule

module or5s3 (input DIN1, input DIN2, input DIN3, input DIN4, input DIN5, output Q);
    or (Q, DIN1, DIN2, DIN3, DIN4, DIN5);
endmodule

// NOR gates
module nor2s3 (input DIN1, input DIN2, output Q);
    nor (Q, DIN1, DIN2);
endmodule

module nor3s3 (input DIN1, input DIN2, input DIN3, output Q);
    nor (Q, DIN1, DIN2, DIN3);
endmodule

module nor4s3 (input DIN1, input DIN2, input DIN3, input DIN4, output Q);
    nor (Q, DIN1, DIN2, DIN3, DIN4);
endmodule

module nor5s3 (input DIN1, input DIN2, input DIN3, input DIN4, input DIN5, output Q);
    nor (Q, DIN1, DIN2, DIN3, DIN4, DIN5);
endmodule

module nor6s1 (input DIN1, input DIN2, input DIN3, input DIN4, input DIN5, input DIN6, output Q);
    nor (Q, DIN1, DIN2, DIN3, DIN4, DIN5, DIN6);
endmodule

module nor6s3 (input DIN1, input DIN2, input DIN3, input DIN4, input DIN5, input DIN6, output Q);
    nor (Q, DIN1, DIN2, DIN3, DIN4, DIN5, DIN6);
endmodule

// AND gates
module and2s3 (input DIN1, input DIN2, output Q);
    and (Q, DIN1, DIN2);
endmodule

module and3s3 (input DIN1, input DIN2, input DIN3, output Q);
    and (Q, DIN1, DIN2, DIN3);
endmodule

module and4s2 (input DIN1, input DIN2, input DIN3, input DIN4, output Q);
    and (Q, DIN1, DIN2, DIN3, DIN4);
endmodule

// NAND gates
module nnd2s1 (input DIN1, input DIN2, output Q);
    nand (Q, DIN1, DIN2);
endmodule

module nnd2s2 (input DIN1, input DIN2, output Q);
    nand (Q, DIN1, DIN2);
endmodule

module nnd2s3 (input DIN1, input DIN2, output Q);
    nand (Q, DIN1, DIN2);
endmodule

module nnd3s2 (input DIN1, input DIN2, input DIN3, output Q);
    nand (Q, DIN1, DIN2, DIN3);
endmodule

module nnd3s3 (input DIN1, input DIN2, input DIN3, output Q);
    nand (Q, DIN1, DIN2, DIN3);
endmodule

module nnd4s2 (input DIN1, input DIN2, input DIN3, input DIN4, output Q);
    nand (Q, DIN1, DIN2, DIN3, DIN4);
endmodule

module nnd4s3 (input DIN1, input DIN2, input DIN3, input DIN4, output Q);
    nand (Q, DIN1, DIN2, DIN3, DIN4);
endmodule

module nnd5s3 (input DIN1, input DIN2, input DIN3, input DIN4, input DIN5, output Q);
    nand (Q, DIN1, DIN2, DIN3, DIN4, DIN5);
endmodule

// XOR and XNOR gates
module xor2s3 (input DIN1, input DIN2, output Q);
    xor (Q, DIN1, DIN2);
endmodule

module xnr2s3 (input DIN1, input DIN2, output Q);
    xnor (Q, DIN1, DIN2);
endmodule

// Inverters
module i1s3 (input DIN, output Q);
    not (Q, DIN);
endmodule

module i1s12 (input DIN, output Q);
    not (Q, DIN);
endmodule

// Inverting buffers
module ib1s1 (input DIN, output Q);
    wire not_DIN;
    not (not_DIN, DIN);
    buf (Q, not_DIN);
endmodule

module ib1s5 (input DIN, output Q);
    wire not_DIN;
    not (not_DIN, DIN);
    buf (Q, not_DIN);
endmodule

module ib1s9 (input DIN, output Q);
    wire not_DIN;
    not (not_DIN, DIN);
    buf (Q, not_DIN);
endmodule

// D flip-flop with synchronous set and optional complementary output
module sdffs1 (DIN, SDIN, SSEL, CLK, Q, QN);
    input DIN;   // Data input
    input SDIN;  // Synchronous set data input
    input SSEL;  // Synchronous set enable
    input CLK;   // Clock input
    output reg Q; // Output of the flip-flop
    output QN;    // Complementary output (optional)

    // Complementary output is the inverse of Q. If it's not used, it doesn't affect the flip-flop operation.
    // It's implemented using a continuous assignment statement.
    assign QN = ~Q;

    always @(posedge CLK) begin
        if (SSEL) begin
            // If SSEL is high, set Q to the value of SDIN synchronously with the clock
            Q <= SDIN;
        end else begin
            // Else, set Q to the value of DIN on the rising edge of CLK
            Q <= DIN;
        end
    end
endmodule
