module SIG(
	iCLK,
	oSY,
	oUY
);

input iCLK;
output [7:0] oSY;
output [7:0] oUY;

reg [7:0] x;
wire [3:0] x1 = x[3:0];
wire [3:0] x2 = x[7:4];
wire [7:0] sy;
wire [7:0] uy;

assign oSY = sy;
assign oUY = uy;

always@(negedge iCLK) begin
	x<=x+8'd1;
end

SIGNED SIG_1(
	.iX1(x1),
	.iX2(x2),
	.oY(sy)
);

UNSIGNED USIG_1(
	.iX1(x1),
	.iX2(x2),
	.oY(uy)
);


endmodule
