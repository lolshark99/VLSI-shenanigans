`include "half_adder.v"
module tb_;
reg A, B;
wire S , C;

half_adder utt(
    .A(A),
    .B(B),
    .S(S),
    .C(C)
);

initial begin
    A = 0 ; B = 0 ;#10;
    A = 0 ; B = 1 ;#10;
    A = 1 ; B = 0 ;#10;
    A = 1 ; B = 1 ;#10;
    $finish;
end
initial begin
    $monitor(
        "A -> %b  B -> %b  || S -> %b C -> %b",
        A , B , S, C
    );
end
endmodule