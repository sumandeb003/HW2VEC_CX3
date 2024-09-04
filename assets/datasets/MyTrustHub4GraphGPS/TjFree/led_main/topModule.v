`defaultnettype none
`include "led.v"

module top
(
 input CLK,
 input RST,
 output [7:0] LED
 );
  
  led #
    (
     .STEP(`STEP)
     )
  instled
    (
     .CLK(CLK),
     .RST(RST),
     .LED(LED)
     );
  
endmodule
module led #
  (
   parameter STEP = 10
   )
  (
   input CLK,
   input RST,
   output reg [7:0] LED
   );
  
  reg [31:0] count;
  
  always @(posedge CLK) begin
    if(RST) begin
      count <= 0;
      LED <= 0;
    end else begin
      if(count == STEP - 1) begin
        count <= 0;
        LED <= LED + 1;
      end else begin
        count <= count + 1;
      end
    end
  end
endmodule


