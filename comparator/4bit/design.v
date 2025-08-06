module comparator_4bit (
    input wire [3:0] A, B,   
    output wire EQ, GT, LT    
);
    assign EQ = (A == B);
    assign GT = (A > B);
    assign LT = (A < B);
endmodule
