// 64-bit full ALU
`timescale 1ns/10ps

module ALU(result, negative, zero, overflow, carry_out, A, B, cntrl);
	input logic  [63:0]	A, B;
	input logic  [2:0] 	cntrl; 
	output logic [63:0]	result;
	output logic			negative, zero, overflow, carry_out;
	
	
   //  64 single-ALUs collected
	
	logic [63:0] inner_co;
	
	ALU_single first (result[0], inner_co[0], A[0], B[0], 1'b0, cntrl[2:0]);
	
	genvar i;
	generate
		for(i = 1; i < 64; i++) begin: eachALU
			ALU_single others (result[i], inner_co[i], A[i], B[i], inner_co[i-1], cntrl[2:0]);
		
		end
	endgenerate
	
	// negative, read as two's complement
	assign negative = result[63];
	
	// overflow
	xor overFlow_check (overflow, inner_co[63], inner_co[62]);
	
	// carry_out
	assign carry_out = inner_co[63];
	
	
	// check zero
	check_zero checkZero (zero, result);
	
	
endmodule
