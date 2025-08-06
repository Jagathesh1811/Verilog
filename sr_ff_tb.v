
module SR_ff_tb;
  reg clk, rst_n;
  reg s, r;
  wire q, q1;
  
  SR_ff ak(clk, rst_n, s, r, q, q1);
  
  always #2 clk = ~clk;
  initial begin
    clk = 0; rst_n = 0;
    #3 rst_n = 1;    
    ff(2'b00);
    ff(2'b01);
    ff(2'b10);
    ff(2'b11);
    #5;
    $finish;
  end
  
  task ff(bit [1:0] sr);
    @(posedge clk);
    {s,r} = sr;
  endtask
  
  initial begin
    $dumpfile("ak.vcd");
    $dumpvars();
  end
endmodule
