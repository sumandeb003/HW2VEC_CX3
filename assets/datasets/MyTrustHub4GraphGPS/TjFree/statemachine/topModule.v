`defaultnettype none
  
module top(CLK, RSTX, MEMA, MEMRE, MEMWE, MEMD, MEMQ, MEMBUSY, MEMDONE);
  input CLK;
  input RSTX;

  parameter WA = 32;
  parameter WD = 32;
  
  output reg [WA-1:0] MEMA;
  output reg MEMRE;
  output reg MEMWE;
  output reg [WD-1:0] MEMD;
  input [WD-1:0] MEMQ;
  input MEMDONE;
  input MEMBUSY;

  reg [3:0] state;
  reg [3:0] cnt;

  wire [3:0] wirecnt0;
  assign wirecnt0 = cnt + 1;
  wire [3:0] wirecnt1;
  assign wirecnt1 = wirecnt0 + 1;

  always @(posedge CLK or negedge RSTX) begin
    if(!RSTX) begin
      MEMRE <= 0;
    end else begin
      MEMRE <= 0;
    end
  end
  
  always @(posedge CLK or negedge RSTX) begin
    if(!RSTX) begin
      state <= 0;
      cnt <= 0;
    end else begin
      if(state == 0) begin
        cnt <= cnt + 1;
        if(cnt == 8) begin
          state <= 1;
          cnt <= 0;
        end
      end else if(state == 1) begin
        cnt <= cnt + 1;
        if(cnt == 8) begin
          state <= 0;
          cnt <= 0;
        end
      end
    end
  end
endmodule


