module top(CLK, RSTX, ADDR, WE, D, Q);
  input CLK;
  input RSTX;

  input [7:0] ADDR;
  input WE;
  input [7:0] D;
  output [7:0] Q;

  reg [7:0] mem [0:255];
  reg [7:0] dADDR;
  
  always @(posedge CLK) begin
    if(WE) mem[ADDR] <= D;
    dADDR <= ADDR;
  end
  assign Q = mem[dADDR];
  
endmodule


