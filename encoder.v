module encoder (
    input wire [7:0] Digits,
    output reg [2:0] Binary // this will be used to store a 3 bit binary
);
integer i;
    always @(*) begin
        for(i = 0 ; i < 8 ; i++)begin
            if(Digits[i] == 1'b1)begin
                Binary = i; // in this case whatver the decimal number is autotmatically covtered to 3 bit  binary for
            end
        end
    end
endmodule