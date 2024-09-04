module top(CLK, RSTX);
  input CLK;
  input RSTX;
  reg [3:0] cnt;

  function [3:0] inc;
    input [3:0] in;
    begin
      if(&inc) begin
        inc = 0;
      end else begin
        inc = in + 1;
      end
    end
  endfunction
  
  always @(posedge CLK or negedge RSTX) begin
    if(!RSTX) begin
      cnt <= 0;
    end else begin
      cnt <= inc(cnt);
    end
  end
  
endmodule


