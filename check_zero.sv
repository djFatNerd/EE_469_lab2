
// check if a input 64-bit number is 0
`timescale 1ns/10ps
module check_zero(zero, in);
	input logic [63:0] in;
	output logic zero;
	
	logic [62:0]result;
	
	or first (result[0], in[0], in[1]);
	
	genvar i;
	generate
		for (i = 0; i < 62; i++) begin: eachAnd
			or or_gates (result[i + 1], in[i + 1], result[i]);
		end
	endgenerate
	
	logic temp;
	not invertor(temp, result[62]);
	assign zero = temp;

endmodule


module check_zero_testbench;
	logic [63:0] in;
	logic zero;
	
	initial begin
		in = 64'b0; #10;
		in[0] = 1;  #10;
		in = 64'b0; #10;
		in = 497403948; #10;
		in = 64'b0; #10;
	end
	
	check_zero dut(.zero, .in);
endmodule



