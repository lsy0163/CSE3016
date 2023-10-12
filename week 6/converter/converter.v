`timescale 1ns / 1ps

module converter(
    input a, b, c, d,
    output conv_a, conv_b, conv_c, conv_d
    );
    assign conv_a = ~((~a)&(~(b&d))&(~(b&c)));
    assign conv_b = ~((~a)&(~(b&c))&(~(b&(~d))));
    assign conv_c = ~((~a)&(~(b&(~c)&d))&(~((~b)&c)));
    assign conv_d = d;
endmodule
