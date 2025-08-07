module not_gate_tb;
  reg a;
  wire b;
  not_gate ak(a,b);
  initial begin
       a=0;
    #10 a=1;
    #10 $finish();
      end
      initial begin
        $dumpfile("not.vcd");
        $dumpvars();
      end
    endmodule
    
