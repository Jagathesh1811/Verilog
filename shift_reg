module shift_register #(
  parameter WIDTH = 8
)(
  input  wire             clk,
  input  wire             rst_n,
  input  wire             en,     
  input  wire             dir,   
  input  wire             si,     
  output reg  [WIDTH-1:0] q,
  output wire             so      
);
  assign so = dir ? q[0] : q[WIDTH-1];

  always @(posedge clk or negedge rst_n) begin
    if (!rst_n)
      q <= {WIDTH{1'b0}};
    else if (en) begin
      if (dir)
        q <= {si, q[WIDTH-1:1]};
      else
        q <= {q[WIDTH-2:0], si};
    end
  end
endmodule
