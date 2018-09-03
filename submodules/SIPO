

module SIPO(clk,clear, in, out);

input in,clk,clear;

output [3:0] out;

reg [3:0] tmp;

reg [3:0] out;

always @(posedge clk)

begin

if (clear)

tmp <= 4'b0000;

else

tmp <= tmp << 1;

tmp[0] <= in;

out = tmp;

end

endmodule
