module jk_f_tb;
  reg j,k,clk,rst;
  wire q,q1;

  initial begin
    clk=0;
    rst=0;
   
    repeat(5) #10 rst=~rst;
    repeat(5)#10 clk=~clk;
    
  
  end
  always begin
      #10 j=0;k=0;
    #10 j=1;k=0;
    #10 j=0;k=1;
    #10 j=1;k=1;
    #50 $finish;
  end
  initial begin
    $monitor("t=%0t,j=%b,k=%b,clk=%b,rst=%b,q=%b,q1=%b",$time,j,k,clk,rst,q,q1);
    $dumpfile("ak1.vcd");
    $dumpvars();
  end
endmodule
