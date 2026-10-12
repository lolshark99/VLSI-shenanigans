`timescale 1ns/1ps
`include "gate_level_syn.v"


module tb_MUX8x1;

    reg [0:7] I;
    reg [0:2] S;
    wire Y;

    // Instantiate the MUX
    MUX8x1 uut (
        .I(I),
        .S(S),
        .Y(Y)
    );

    initial begin
        // Set different values on the inputs
        I = 8'b10110101;

        // Test all 8 select combinations
        S = 3'b000; #10;
        $display("S=%b, Y=%b, Expected=%b", S, Y, I[0]);

        S = 3'b001; #10;
        $display("S=%b, Y=%b, Expected=%b", S, Y, I[1]);

        S = 3'b010; #10;
        $display("S=%b, Y=%b, Expected=%b", S, Y, I[2]);

        S = 3'b011; #10;
        $display("S=%b, Y=%b, Expected=%b", S, Y, I[3]);

        S = 3'b100; #10;
        $display("S=%b, Y=%b, Expected=%b", S, Y, I[4]);

        S = 3'b101; #10;
        $display("S=%b, Y=%b, Expected=%b", S, Y, I[5]);

        S = 3'b110; #10;
        $display("S=%b, Y=%b, Expected=%b", S, Y, I[6]);

        S = 3'b111; #10;
        $display("S=%b, Y=%b, Expected=%b", S, Y, I[7]);

        $finish;
    end

endmodule
