`timescale 1ns / 1ps
module subtractor_tb;

reg aa, bb;
wire dd, bborrow;

subtractor u_subtractor (
.a (aa),
.b (bb),
.d (dd),
.borrow (bborrow)
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
