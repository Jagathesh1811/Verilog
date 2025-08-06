module traffic_light_controller (
    input clk, reset, ped_request,
    output reg [1:0] light,   
    output reg ped_light      
);
    reg [3:0] timer;

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            light <= 2'b00;
            ped_light <= 0;
            timer <= 0;
        end else begin
            timer <= timer + 1;

            case (light)
                2'b00: if (timer == 5) begin
                    light <= 2'b10;
                    timer <= 0;
                end
                2'b10: if (timer == 5) begin
                    light <= 2'b01;
                    timer <= 0;
                end
                2'b01: if (timer == 2) begin
                    light <= 2'b00;
                    timer <= 0;
                    ped_light <= ped_request;
                end
            endcase
        end
    end
endmodule
