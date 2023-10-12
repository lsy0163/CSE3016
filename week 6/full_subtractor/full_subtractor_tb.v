`timescale 1ns / 1ps
module subtractor_tb;

reg aa, bb, bbin;
wire ss, bbout;

subtractor u_subtractor (
.a (aa),
.b (bb),
.b_in (bbin),
.d (dd),
.b_out (bbout)
);

initial begin
    aa=1'b0;
    bb=1'b0;
    bbin=1'b0;
end

always @(aa or bb or bbin) begin
    aa <= #110 ~aa;
    bb <= #150 ~bb;
    bbin <= #190 ~bbin;
end

endmodule
