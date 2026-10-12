module MUX8x1(
    input [0:7] I,
    //inpur []
    input [0:2] S,
    output Y
);
wire [0:2] W; // W is used to store the Select line array (idk why i Created this)
wire [0:7] X; // X is the input wire array 
wire n0, n1, n2;

assign W = S;

not(n0 , W[0]);
not(n1 , W[1]);
not(n2 , W[2]);

and(X[0] , I[0] , n0 , n1 ,n2);
and(X[1] , I[1] , n0 , n1 ,W[2]);
and(X[2] , I[2] , n0 , W[1] ,n2);
and(X[3] , I[3] , n0 , W[1] ,W[2]);
and(X[4] , I[4] , W[0] , n1 ,n2);
and(X[5] , I[5] , W[0] , n1 ,W[2]);
and(X[6] , I[6] , W[0] , W[1] ,n2);
and(X[7] , I[7] , W[0] , W[1] ,W[2]);

or(Y,X[0],X[1],X[2],X[3],X[4],X[5],X[6],X[7]);

endmodule
