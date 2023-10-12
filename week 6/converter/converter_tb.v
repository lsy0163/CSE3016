`timescale 1ns / 1ps
module converter_tb;

reg aa, bb, cc, dd;
wire cconv_a, cconv_b, cconv_c, cconv_d;

converter u_converter(
.a (aa),
.b (bb),
.c (cc),
.d (dd),
.conv_a (cconv_a),
.conv_b (cconv_b),
.conv_c (cconv_c),
.conv_d (cconv_d)
);

initial begin
    aa=1'b0;
    bb=1'b0;
    cc=1'b0;
    dd=1'b0;
end

always @(aa or bb or cc or dd) begin
    aa <= #80 ~aa;
    bb <= #40 ~bb;
    cc <= #20 ~cc;
    dd <= #10 ~dd;
end

endmodule
