module decoder4x16(
    output [0:15]I,
    input [0:3]O;
);
wire [0:3]N;
assign N = ~I; //  
endmodule