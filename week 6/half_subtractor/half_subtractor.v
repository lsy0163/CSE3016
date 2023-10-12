`timescale 1ns / 1ps

module subtractor(
    input a, b, 
    output d, borrow
    );
    assign d = a^b;
    assign borrow = (~a)&b;
endmodule
