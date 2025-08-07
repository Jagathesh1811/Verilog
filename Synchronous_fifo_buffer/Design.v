module fifo #(parameter DEPTH = 4)(
    input clk, reset, wr_en, rd_en,
    input [7:0] din,
    output reg [7:0] dout,
    output reg full, empty
);
    reg [7:0] mem [0:DEPTH-1];
    reg [2:0] w_ptr = 0, r_ptr = 0;
    reg [2:0] count = 0;

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            w_ptr <= 0; r_ptr <= 0; count <= 0;
            full <= 0; empty <= 1;
        end else begin
            if (wr_en && !full) begin
                mem[w_ptr] <= din;
                w_ptr <= w_ptr + 1;
                count <= count + 1;
            end

            if (rd_en && !empty) begin
                dout <= mem[r_ptr];
                r_ptr <= r_ptr + 1;
                count <= count - 1;
            end

            full <= (count == DEPTH);
            empty <= (count == 0);
        end
    end
endmodule
