module UNSIGNED(
	iX1,
	iX2,
	oY
);

input [3:0] iX1;
input [3:0] iX2;
output [7:0] oY;

assign oY = iX1*iX2;

endmodule
