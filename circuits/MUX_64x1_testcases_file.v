module tb_mux64x1;

reg [63:0] I;
reg [5:0] S;
wire Y;

mux64x1 uut(I, S, Y);

initial begin

    I = 64'b00000000000000000000000000000000_00000000000000000000000000000001;

    
    S = 6'b000000;
    #10;

    
    S = 6'b000001;
    #10;

    
    S = 6'b000010;
    #10;
    
    S = 6'b000011;
    #10;

    $finish;

end

initial begin
    $monitor("Time=%0t | S=%b | Y=%b", $time, S, Y);
end

endmodule