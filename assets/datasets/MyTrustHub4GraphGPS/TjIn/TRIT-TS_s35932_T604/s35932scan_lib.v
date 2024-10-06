module nor2s3 (DIN1, DIN2, Q);
	input DIN1, DIN2;
	output Q;
	nor (Q, DIN1, DIN2);
endmodule

module and2s3 ( DIN1, DIN2, Q );
	input DIN1, DIN2;
	output Q;
	and (Q, DIN1, DIN2);
endmodule

module and3s3 ( DIN1, DIN2, DIN3, Q );
	input DIN1, DIN2, DIN3;
	output Q; 
	and (Q, DIN1, DIN2, DIN3);
endmodule

module nnd2s3 ( DIN1, DIN2, Q );
	input DIN1, DIN2;
	output Q;
	nand (Q, DIN1, DIN2);
endmodule

module nnd4s2 ( DIN1, DIN2, DIN3, DIN4, Q );
	input DIN1, DIN2, DIN3, DIN4;
	output Q;
	nand (Q, DIN1, DIN2, DIN3, DIN4);
endmodule

module xor2s3 ( DIN1, DIN2, Q );
	input DIN1, DIN2;
	output Q;
	xor (Q, DIN1, DIN2);
endmodule

module xnr2s3 ( DIN1, DIN2, Q );
	input DIN1, DIN2;
	output Q;
	xnor (Q, DIN1, DIN2);
endmodule

module i1s3 ( DIN, Q );
	input DIN;
	output Q;
	not (Q, DIN);
endmodule

module i1s11 ( DIN, Q );
	input DIN;
	output Q;
	not (Q, DIN);
endmodule

module i1s12 ( DIN, Q );
	input DIN;
	output Q;
	not (Q, DIN);
endmodule

module ib1s9 ( DIN, Q );
	input DIN;
	output Q;
	wire not_DIN;
	
	not (not_DIN, DIN);
	buf (Q, not_DIN);
endmodule

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

