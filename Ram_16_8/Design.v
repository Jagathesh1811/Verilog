module ram_16x8 (
    input clk,
    input wr_en,
    input [3:0] addr,
    input [7:0] din,
    output reg [7:0] dout
);
    reg [7:0] mem [15:0];

    always @(posedge clk) begin
        if (wr_en)
            mem[addr] <= din;
        else
            dout <= mem[addr];
    end
endmodule
