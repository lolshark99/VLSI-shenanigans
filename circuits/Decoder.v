module decoder4x16(
    output [0:15]O,
    input [0:3]I;
);
//wire [0:3]N;
assign O[0] = ~I[0] & ~I[1] & ~I[2] &~I[3];
assign O[1] = I[0] & I[1] & I[2] &I[3];
assign O[2] = I[0] & I[1] & I[2] &I[3];
assign O[3] = I[0] & I[1] & I[2] &I[3];
assign O[4] = I[0] & I[1] & I[2] &I[3];
assign O[5] = I[0] & I[1] & I[2] &I[3];
assign O[6] = I[0] & I[1] & I[2] &I[3];
assign O[7] = I[0] & I[1] & I[2] &I[3];
assign O[8] = I[0] & I[1] & I[2] &I[3];
assign O[8] = I[0] & I[1] & I[2] &I[3];
assign O[10] = I[0] & I[1] & I[2] &I[3];
assign O[11] = I[0] & I[1] & I[2] &I[3];
assign O[12] = I[0] & I[1] & I[2] &I[3];
assign O[13] = I[0] & I[1] & I[2] &I[3];
assign O[14] = I[0] & I[1] & I[2] &I[3];
assign O[15] = I[0] & I[1] & I[2] &I[3];
// assign O[1] = N[0] & N[1] & N[2] &N[3];
// assign O[1] = N[0] & N[1] & N[2] &N[3];
endmodule