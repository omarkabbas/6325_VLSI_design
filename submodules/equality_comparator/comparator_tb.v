`timescale 1ns / 1ps

module comp4_tb;
  
	// module inputs
	reg [3:0] a, b;

	// module output
	wire eq;

	// instantiate
	comp4 uut (.eq(eq), .a(a), .b(b));

	// initialize
	initial begin
		a = 0; b = 0;
		#100;
	end

	// test a few
	initial begin
		
		#10 a = 1;
		#10 b = 1;
		#10 a = 7;
		#10 b = 7;
		#10 a = 6;
		#10 b = 12;
		
	end
endmodule