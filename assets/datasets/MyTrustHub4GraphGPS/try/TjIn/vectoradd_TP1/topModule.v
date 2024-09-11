module top(CLK, RSTX,
           MEMA, MEMRE, MEMWE, MEMD, MEMQ, MEMBUSY, MEMDONE);
  input CLK;
  input RSTX;
  
  parameter WA = 32;
  parameter WD = 32;
  parameter SIZE = 1024 * 32;

  localparam OFFSET0 = 0;
  localparam OFFSET1 = SIZE * 1;
  localparam OFFSET2 = SIZE * 2;
  
  output reg [WA-1:0] MEMA;
  output reg MEMRE;
  output reg MEMWE;
  output reg [WD-1:0] MEMD;
  input [WD-1:0] MEMQ;
  input MEMDONE;
  input MEMBUSY;

  reg [WA-1:0] cnt0;
  reg [WA-1:0] cnt1;
  reg [WA-1:0] cnt2;
  reg [WD-1:0] readdata0;
  reg [WD-1:0] readdata1;
  reg [WD-1:0] writedata;
  reg [3:0] state;
  reg [3:0] tjctr;
  reg trigger;    

  localparam STINIT = 0;
  localparam STREAD0 = 1;
  localparam STREADWAIT0 = 2;
  localparam STINTERVAL = 3;
  localparam STREAD1 = 4;
  localparam STREADWAIT1 = 5;
  localparam STCALC = 6;
  localparam STWRITE = 7;
  localparam STWRITEWAIT = 8;
  localparam STDONE = 9;

  always @(posedge CLK or negedge RSTX) begin
    if((!RSTX) || (trigger == 1)) begin
      state <= STINIT;
      cnt0 <= 0;
      cnt1 <= 0;
      cnt2 <= 0;
      if(!RSTX) begin tjctr <= 0; end
    end else begin
      if(state == STINIT) begin
        MEMWE <= 0;
        MEMRE <= 0;
        if(!MEMBUSY) state <= STREAD0;
      end else if(state == STREAD0) begin
        MEMRE <= 1;
        MEMA <= cnt0 + OFFSET0;
        if(MEMBUSY) state <= STREADWAIT0;
      end else if(state == STREADWAIT0) begin
        MEMRE <= 0;
        readdata0 <= MEMQ;
        if(MEMDONE) state <= STINTERVAL;
      end else if(state == STINTERVAL) begin
        if(!MEMBUSY) state <= STREAD1;
      end else if(state == STREAD1) begin
        MEMRE <= 1;
        MEMA <= cnt1 + OFFSET1;
        if(MEMBUSY) state <= STREADWAIT1;
      end else if(state == STREADWAIT1) begin
        MEMRE <= 0;
        readdata1 <= MEMQ;
        if(MEMDONE) state <= STCALC;
      end else if(state == STCALC) begin
        writedata <= readdata0 + readdata1;
        if(!MEMBUSY) state <= STWRITE;
      end else if(state == STWRITE) begin
        MEMWE <= 1;
        MEMD <= writedata;
        MEMA <= cnt2 + OFFSET2;
        if(MEMBUSY) state <= STWRITEWAIT;
      end else if(state == STWRITEWAIT) begin
        MEMWE <= 0;
        if(MEMDONE) begin
          cnt0 <= cnt0 + 32;
          cnt1 <= cnt1 + 32;
          cnt2 <= cnt2 + 32;
          if(cnt0 < SIZE) begin 
          	state <= STINIT; 
          	tjctr <= tjctr + 1; 
          end
          else state <= STDONE;
        end
      end else if(state == STDONE) begin
        $display("Done");
        
      end
      if (tjctr == 4'b1111) begin trigger <= 1; end
    end
  end
endmodule


