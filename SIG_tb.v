`timescale 1ps/1ps
module SIG_tb();
reg [3:0] x1;
reg [3:0] x2;
wire [7:0] y;

reg clk;
initial begin
    clk=0;
    forever begin
        #10;
        clk=~clk;
    end
end

initial begin
    x1=0;
    x2=0;
    repeat(16) begin
        repeat(16) begin
            @(posedge clk);
            x2=x2+4'd1;
            @(negedge clk);
            $display("%x*%x=%x",x1,x2,y);
        end
        x1=x1+4'd1;
    end
    $display("finish");
    $finish;
end

SIG SIG_1(
    .iX1(x1),
    .iX2(x2),
    .oY(y)
);

endmodule

