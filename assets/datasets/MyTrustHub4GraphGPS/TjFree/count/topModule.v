module top(CLK, RSTX);
  input CLK;
  input RSTX;
  reg [3:0] cnt;

  always @(posedge CLK or negedge RSTX) begin
    if(!RSTX) begin
      cnt <= 0;
    end else begin
      cnt <= cnt + 1;
    end
  end
  
endmodule


