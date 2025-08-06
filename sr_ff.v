module SR_ff (
  input clk, rst_n,s,r,
  output reg q,
  output q1
  );
  always@(posedge clk) begin
    if(!rst_n) q = 0;
    else begin
      case({s,r})
        2'b00: q = q;   
        2'b01: q = 1'b0; 
        2'b10: q = 1'b1; 
        2'b11: q = 1'bx; 
      endcase
    end
  end
  assign q1 = ~q;
endmodule
