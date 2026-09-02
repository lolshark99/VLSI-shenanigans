`include "full_adder.v"
module tb_;
reg A, B , old_carry;
wire S , carry;

 
full_adder utt(
    .A(A),
    .B(B),
    .old_carry(old_carry),
    .S(S),
    .carry(carry)
);

initial begin
    A = 0 ;B = 0; old_carry = 0;#10;
    A = 0 ;B = 0; old_carry = 1;#10;
    A = 0 ;B = 1; old_carry = 0;#10;
    A = 0 ;B = 1; old_carry = 1;#10;
    A = 1 ;B = 0; old_carry = 0;#10;
    A = 1 ;B = 0; old_carry = 1;#10;
    A = 1 ;B = 1; old_carry = 0;#10;
    A = 1 ;B = 1; old_carry = 1;#10;
    $finish;
end

initial begin
    $monitor(
        "A=%b B=%b old_carry=%b | S=%b carry=%b",
        A, B, old_carry, S, carry
    );
end

endmodule