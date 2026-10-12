module full_adder(
   input A , B , old_carry,
   output S , carry
);
assign S = A ^ B ^ old_carry;
assign carry = (A&B) | (A&old_carry) | (old_carry&B);
endmodule

