`timescale 1ns / 1ps

module subtractor(
    input a, b, b_in,
    output d, b_out
    );
    assign d = (a^b)^b_in;
    assign b_out = ((~(a^b))&b_in) | (~a)&b;
endmodule
