
module tb_signed_multiplier;
    reg signed [3:0] a, b;
    wire signed [7:0] product;

    signed_multiplier uut(a, b, product);

    initial begin
        $dumpfile("signed_mult.vcd"); $dumpvars(0, tb_signed_multiplier);

        a = 4; b = -3; #10;
        a = -2; b = -2; #10;
        a = 7; b = 2; #10;
        a = -5; b = 3; #10;

        $finish;
    end
endmodule
