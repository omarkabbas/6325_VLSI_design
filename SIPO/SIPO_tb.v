module SIPO_tb;

reg clk;

reg clear;

reg in;

wire [3:0] out;

SIPO uut (.clk(clk),.clear(clear),.in(in),.out(out) );

initial begin

clk = 0;

clear = 0;

in = 0;

#5 clear=1'b1;

#5 clear=1'b0;

#10 in=1'b1;

#10 in=1'b0;

#10 in=1'b0;

#10 in=1'b1;

#10 in=1'b0;

//#10 si=1'bx;

end

always #5 clk = ~clk;

initial #150 $stop;

endmodule
