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
    // to be worked upon tomorrow!!
);

endmodule