
module tb_johnson_counter;
    reg clk, reset;
    wire [3:0] q;

    johnson_counter uut (.clk(clk), .reset(reset), .q(q));
    always #5 clk = ~clk;

    initial begin
        $dumpfile("johnson_counter.vcd"); $dumpvars(0, tb_johnson_counter);
        clk = 0; reset = 1; #10;
        reset = 0; #80;
        $finish;
    end
endmodule
