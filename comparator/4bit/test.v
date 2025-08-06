module tb_comparator_4bit;
    reg [3:0] A, B;
    wire EQ, GT, LT;

    comparator_4bit uut (
        .A(A),
        .B(B),
        .EQ(EQ),
        .GT(GT),
        .LT(LT)
    );

    initial begin
        $dumpfile("comparator_4bit.vcd");
        $dumpvars(0, tb_comparator_4bit);

        $monitor("Time=%0t | A=%b, B=%b | EQ=%b, GT=%b, LT=%b", $time, A, B, EQ, GT, LT);

       
        A = 4'b0000; B = 4'b0000; #10;  // A = B
        A = 4'b0101; B = 4'b1001; #10;  // A < B
        A = 4'b1111; B = 4'b1010; #10;  // A > B
        A = 4'b0110; B = 4'b0110; #10;  // A = B
        A = 4'b1100; B = 4'b1011; #10;  // A > B
        A = 4'b0011; B = 4'b0100; #10;  // A < B

        $finish;
    end
endmodule
