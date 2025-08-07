
module tb_fifo;
    reg clk, reset, wr_en, rd_en;
    reg [7:0] din;
    wire [7:0] dout;
    wire full, empty;

    fifo uut(clk, reset, wr_en, rd_en, din, dout, full, empty);

    always #5 clk = ~clk;

    initial begin
        $dumpfile("fifo.vcd"); $dumpvars(0, tb_fifo);
        clk = 0; reset = 1; wr_en = 0; rd_en = 0; din = 0;
        #10 reset = 0;

        wr_en = 1; din = 8'h11; #10;
        din = 8'h22; #10;
        din = 8'h33; #10;
        din = 8'h44; #10;
        wr_en = 0;

        rd_en = 1; #10; #10; #10; #10;
        rd_en = 0;

        $finish;
    end
endmodule
