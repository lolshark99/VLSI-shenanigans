module encoder_tb;
    reg [7:0] D;
    wire [2:0] B;
    encoder uut (
        .Digits(D),
        .Binary(B)
    );
    initial begin
        $monitor("D = %b, B = %b", D, B);
        D = 8'b00000001;
        #10;
        D = 8'b00000010;
        #10;
        D = 8'b00000100;
        #10;
        D = 8'b00001000;
        #10;
        D = 8'b00010000;
        #10;
        D = 8'b00100000;
        #10;
        D = 8'b01000000;
        #10;
        D = 8'b10000000;
        #10;
        $finish;
    end
endmodule