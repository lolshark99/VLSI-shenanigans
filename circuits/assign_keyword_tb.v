module assign_use_tb(
    reg Y , X,
    wire Z
);
endmodule

assign_use a1(
    .Y(a),
    .X(b),
    .Z(c)
);

initial begin
    
end