module tb_traffic_light_controller;
    reg clk, reset, ped_request;
    wire [1:0] light;
    wire ped_light;

    traffic_light_controller uut(clk, reset, ped_request, light, ped_light);

    always #5 clk = ~clk;

    initial begin
        $dumpfile("traffic_light.vcd"); $dumpvars(0, tb_traffic_light_controller);
        clk = 0; reset = 1; ped_request = 0;
        #10 reset = 0;

        ped_request = 1; #100;
        ped_request = 0; #100;

        $finish;
    end
endmodule
