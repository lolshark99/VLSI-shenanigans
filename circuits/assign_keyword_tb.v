module assign_use_tb(
    reg Y , X,
    wire Z;
);
endmodule

assign_use a1(
    .a(Y),
    .b(X),
    .c(Z)
);

initial begin
    Y = 0 ; X = 0;
    #10Y = 0 ; X = 1;
    #10Y = 1 ; X = 0;
    #10Y = 1 ; X = 1;
end

initial begin
    $dumpfile("Waveforms.vcd");
    $dumpvars(0 , assign_use_tb);
end    