module tb_comparator;
    reg [7:0] a, b;
    wire gt, lt, eq;

    comparator dut(a, b, gt, lt, eq);

    initial begin
        $dumpfile("comparator.vcd");
        $dumpvars(0, tb_comparator);
        a = 10; b = 20; #10;
        a = 25; b = 25; #10;
        a = 30; b = 15; #10;
        $finish;
    end
endmodule
