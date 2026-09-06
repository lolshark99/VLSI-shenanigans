module Decoder_tb;

reg [0:3] R;
wire [0:15] W;

decoder4x16 d1(
    .I(R),
    .O(W)
);

integer k;

initial begin
    $display("           This is a Decoder          ");
    $display("======================================");
    //$display("======================================");
    $display(" I3 I2 I1 I0 | O15 O14 O13 O12 O11 O10 O9 O8 O7 O6 O5 O4 O3 O2 O1 O0");
    $display("-------------|-----------------------------------------------------");

    for(k = 0 ; k < 16 ; k++)begin
        R = k;
        #10;
        $display(" %b  | %b", R, W);
    end
    $finish;
    
end
endmodule