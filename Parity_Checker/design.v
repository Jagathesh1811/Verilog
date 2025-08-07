module parity_checker (
    input clk,
    input reset,
    input bit_in,
    output reg even_parity
);

    reg state;


    always @(posedge clk or posedge reset) begin
        if (reset)
            state <= 0;
        else
            state <= state ^ bit_in;  
    end

    always @(*) begin
        even_parity = (state == 0) ? 1 : 0;
    end
endmodule
