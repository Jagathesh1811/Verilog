module nor_gate_tb;
  reg a,b;
  wire y;
  nor_gate ak(a,b,y);
  initial begin
    a=0;b=0;
    #10 a=1;b=0;
    #10 a=0;b=1;
    #10 a=1;b=1;
  end
  initial begin
    $dumpfile("nor.vcd");
    $dumpvars;
  end
endmodule
