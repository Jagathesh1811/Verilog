timescale 1ns / 1ps

module tb_traffic_light_fsm;
    reg clk;
    reg reset;
    wire [2:0] lights;

    traffic_light_fsm uut (
        .clk(clk),
        .reset(reset),
        .lights(lights)
    );


    always #5 clk = ~clk;

    initial begin
        $display("Time\tRed Yellow Green");
        $monitor("%0t\t%b   %b     %b", $time, lights[2], lights[1], lights[0]);

        clk = 0;
        reset = 1;

        #10 reset = 0;

        
        #100;

        $finish;
    end
endmodule
