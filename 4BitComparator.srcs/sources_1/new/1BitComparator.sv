module OneBC
	// I/O ports
	(
		input logic a, b,
		output logic [2:0] eq
	);

	// signal declaration
	logic G, E, L;

	// body
	// sum of two product terms
	assign eq = {G,E,L};
	// prtoduct terms
	assign G = a & ~b;
	assign L = ~a & b;
	assign E = ~G & ~L;
endmodule