module test;

reg a, b;
wire y;

and_gate uut(
    .a(a),
    .b(b),
    .y(y)
);

initial begin
    a = 0; b = 0;
    #1 $display("%b %b -> %b", a, b, y);

    a = 0; b = 1;
    #1 $display("%b %b -> %b", a, b, y);

    a = 1; b = 0;
    #1 $display("%b %b -> %b", a, b, y);

    a = 1; b = 1;
    #1 $display("%b %b -> %b", a, b, y);

    $finish;
end

endmodule