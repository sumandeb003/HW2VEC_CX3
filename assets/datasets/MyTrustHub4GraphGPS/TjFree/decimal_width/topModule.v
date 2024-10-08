module top(CLK, RST);
  input CLK, RST;
  reg [7:0] cnt;
  
  always @(posedge CLK or negedge RST) begin
    if(RST) begin
      cnt <= 'd0;
    end else begin
      cnt <= cnt + 8'd1;
    end
  end

endmodule


