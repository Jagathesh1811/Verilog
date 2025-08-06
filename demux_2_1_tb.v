module demux_tb;
  reg s, i;
  wire y0, y1;
  
  demux_2_1 demux(s, i, y0, y1);
  initial begin
   
    s=0; i=0; #1;
    s=0; i=1; #1;
    s=1; i=0; #1;
    s=1; i=1; #1;
  end
  initial begin
    $dumpfile("ak.vcd");
    $dumpvars();
  end
endmodule
