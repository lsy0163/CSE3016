`timescale 1ns / 1ps
module adder_tb;

reg aa, bb, ccin;
wire ss, ccout;

adder u_adder (
.a (aa),
.b (bb),
.c_in (ccin),
.s (ss),
.c_out (ccout)
);

initial begin
    aa=1'b0;
    bb=1'b0;
    ccin=1'b0;
end

always @(aa or bb or ccin) begin
    aa <= #110 ~aa;
    bb <= #150 ~bb;
    ccin <= #190 ~ccin;
end

endmodule
