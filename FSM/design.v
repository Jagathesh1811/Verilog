module traffic_light_fsm (
    input clk,
    input reset,
    output reg [2:0] lights  
);

    typedef enum reg [1:0] {
        RED = 2'b00,
        GREEN = 2'b01,
        YELLOW = 2'b10
    } state_t;

    state_t current_state, next_state;

    always @(posedge clk or posedge reset) begin
        if (reset)
            current_state <= RED;
        else
            current_state <= next_state;
    end


    always @(*) begin
        case (current_state)
            RED:    next_state = GREEN;
            GREEN:  next_state = YELLOW;
            YELLOW: next_state = RED;
            default: next_state = RED;
        endcase
    end


    always @(*) begin
        case (current_state)
            RED:    lights = 3'b100; 
            GREEN:  lights = 3'b001;
            YELLOW: lights = 3'b010; 
            default: lights = 3'b000;
        endcase
    end

endmodule
