module FourBC(
		input logic [3:0] a, b,
		output logic [2:0] eq
    );
    logic [2:0] GEL0;
    logic [2:0] GEL1;
    
    TwoBC b0Comparator (.a(a[1:0]), .b(b[1:0]), .eq(GEL0));
    TwoBC b1Comparator (.a(a[3:2]), .b(b[3:2]), .eq(GEL1));
    
    assign G = GEL1[2] | (GEL1[1]&GEL0[2]);
    assign L = GEL1[0] | (GEL1[1]&GEL0[0]); 
    assign E = ~G & ~L;
    
    assign eq = {G,E,L};
endmodule
