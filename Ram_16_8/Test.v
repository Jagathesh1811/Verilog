
module tb_ram_16x8;
    reg clk, wr_en;
    reg [3:0] addr;
    reg [7:0] din;
    wire [7:0] dout;

    ram_16x8 uut(clk, wr_en, addr, din, dout);

    always #5 clk = ~clk;

    initial begin
        $dumpfile("ram.vcd"); $dumpvars(0, tb_ram_16x8);
        clk = 0; wr_en = 1;

        addr = 4'h1; din = 8'hAA; #10;
        addr = 4'h2; din = 8'h55; #10;

        wr_en = 0; addr = 4'h1; #10;
        addr = 4'h2; #10;

        $finish;
    end
endmodule
