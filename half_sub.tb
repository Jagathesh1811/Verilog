module hs_tb;
  reg a, b;
  wire d, br;
  
  hs ak(a, b, d, br);
  
  initial begin
    a = 0; b = 0;
    #1;
    a = 0; b = 1;
    #1;
    a = 1; b = 0;
    #1;
    a = 1; b = 1;
  end
  initial begin
    $monitor("t=0t% a=%b b=%b, d=%b, br=%b",$time, a,b,d,br);
    $dumpfile("ak.vcd");
    $dumpvars();
  end
endmodule
