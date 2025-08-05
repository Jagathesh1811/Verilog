module decoder_3_8_tb;
    reg [2:0] a;
    wire [7:0] y;
    integer i;

    decoder_3_8 dc (.a(a), .y(y));

    initial begin
      
        for (i = 0; i < 8; i = i + 1) begin
            a = i; #10;
        end
        $finish;
    end
  initial begin
    $dumpfile("dc.vcd");
        $dumpvars();
  end
endmodule
