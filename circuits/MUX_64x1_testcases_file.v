module Testbench_mux_64x1;

reg [63:0] I;
reg [5:0] S;
wire Y;

mux_64x1 uut(I, S, Y);

initial begin

    I = 64'b00000000000000000000000000000000_00000000000000000000000000000001;

    
    S = 6'b000000;  // S0 S1 S2 S3 S4 S5 = 000000
    S = 6'b100000;  // S0 S1 S2 S3 S4 S5 = 000001
    S = 6'b010000;  // S0 S1 S2 S3 S4 S5 = 000010
    S = 6'b110000;  // S0 S1 S2 S3 S4 S5 = 000011

    $finish;

end

initial begin
    $monitor("Time=%0t | S=%b | Y=%b", $time, S, Y);
end

endmodule