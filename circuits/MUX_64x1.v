module mux_4x1(
  input I1 , I2 , I3 , I4,
  input S0 ,S1,
  output Y 
);

wire nS0 , nS1; // not version for the select lines
wire w1 , w2 , w3 , w4;

not n0(nS0 , S0); // n0 is the instance name and it means S0 is inverted and stored into nS0
not n1(nS1 , S1); // n1 is the instance name and it means S1 is inverted and stored into nS1

and a1(w1 , I1 , nS0 , nS1); // same way here a1 is the instance and the 1st parameter is the wire where the and of the next 3 inputs would work
and a2(w2 , I2 , nS0 ,S1); 
and a3(w3 , I3 , S0 , nS1);
and a4(w4 , I4 , S0 , S1);

or o1(Y , w1 , w2 , w3 , w4); // o1 is the instance and the Y is where it is stored and rest all are or'ed


endmodule

module mux_64x1(
    // to be worked upon tomorrow!!(done!!!)
    // instansiate 23 4x1 muxs to get a singular 64x1 mux
    input I[0:63],
    input S[0:5],
    output Y
);

wire [0:15] W;
wire [0:3] X;
// instantiate 21 (16 + 4 + 1) 4x1 muxs to get a singular 64x1 mux

// 1st 16
mux_4x1 m1 (I[0],  I[1],  I[2],  I[3],  S[0], S[1], W[0]);
mux_4x1 m2 (I[4],  I[5],  I[6],  I[7],  S[0], S[1], W[1]);
mux_4x1 m3 (I[8],  I[9],  I[10], I[11], S[0], S[1], W[2]);
mux_4x1 m4 (I[12], I[13], I[14], I[15], S[0], S[1], W[3]);
mux_4x1 m5 (I[16], I[17], I[18], I[19], S[0], S[1], W[4]);
mux_4x1 m6 (I[20], I[21], I[22], I[23], S[0], S[1], W[5]);
mux_4x1 m7 (I[24], I[25], I[26], I[27], S[0], S[1], W[6]);
mux_4x1 m8 (I[28], I[29], I[30], I[31], S[0], S[1], W[7]);
mux_4x1 m9  (I[32], I[33], I[34], I[35], S[0], S[1], W[8]);
mux_4x1 m10 (I[36], I[37], I[38], I[39], S[0], S[1], W[9]);
mux_4x1 m11 (I[40], I[41], I[42], I[43], S[0], S[1], W[10]);
mux_4x1 m12 (I[44], I[45], I[46], I[47], S[0], S[1], W[11]);
mux_4x1 m13 (I[48], I[49], I[50], I[51], S[0], S[1], W[12]);
mux_4x1 m14 (I[52], I[53], I[54], I[55], S[0], S[1], W[13]);
mux_4x1 m15 (I[56], I[57], I[58], I[59], S[0], S[1], W[14]);
mux_4x1 m16 (I[60], I[61], I[62], I[63], S[0], S[1], W[15]);

// Middle 4
mux_4x1 m17(W[0] , W[1] , W[2] , W[3] , S[2] , S[3]   ,X[0]);
mux_4x1 m18(W[4] , W[5] , W[6] , W[7] , S[2] , S[3]   ,X[1]);
mux_4x1 m19(W[8] , W[9] , W[10] , W[11] , S[2] , S[3] , X[2]);
mux_4x1 m20(W[12] , W[13] , W[14] , W[15] , S[2] , S[3] , X[3]);


// last 1
mux_4x1 m21(X[0] , X[1] , X[2] ,X[3] , S[4] , S[5], Y);


endmodule