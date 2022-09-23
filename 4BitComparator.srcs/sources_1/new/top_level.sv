module top_level(
	input wire [15:0]sw,
	output logic [15:0]led);
	
	FourBC b0Comparator (.a(sw[8:5]), .b(sw[3:0]), .eq(led[2:0]));
	
endmodule