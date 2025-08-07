
module tb_priority_encoder;
    reg [7:0] in;
    wire [2:0] out;

    priority_encoder_8to3 uut(in, out);

    initial begin
        $dumpfile("priority_encoder.vcd"); $dumpvars(0, tb_priority_encoder);
        in = 8'b00000001; #10;
        in = 8'b00010000; #10;
        in = 8'b01000000; #10;
        in = 8'b10000000; #10;
        $finish;
    end
endmodule
