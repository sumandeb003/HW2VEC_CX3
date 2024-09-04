module top(CLK, RSTX, subin, subout);
  parameter WD = 4;
  input CLK;
  input RSTX;
  input [WD-1:0] subin;
  output [WD-1:0] subout;
  
  genvar j;
  generate for(j=0; j<WD; j=j+1) begin: subloop
    if(j == 0) begin: subt
      wire tmp;
      assign subout[j] = subin[j];
      assign tmp = ~subin[j];
    end else begin: subf
      wire tmp;
      if(j == 1) begin
        assign subout[j] = subloop[j-1].subt.tmp ^ subin[j];
      end else begin
        assign subout[j] = subloop[j-1].subf.tmp ^ subin[j];
      end
    end
  end endgenerate
    
endmodule


