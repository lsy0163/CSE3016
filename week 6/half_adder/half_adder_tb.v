`timescale 1ns / 1ps
module adder_tb;

reg aa, bb;
wire ss, cc;

adder u_adder (
.a (aa),
.b (bb),
.s (ss),
.c (cc)
);

initial begin
    aa=1'b0;
    bb=1'b0;
end

always @(aa or bb) begin
    aa <= #100 ~aa;
    bb <= #200 ~bb;
end

endmodule
