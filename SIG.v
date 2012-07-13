`timescale 1ps/1ps
module SIG(
    iX1,
    iX2,
    oY
);

input signed [3:0] iX1;
input signed [3:0] iX2;
output signed [7:0] oY;

assign oY = iX1*iX2;

endmodule

