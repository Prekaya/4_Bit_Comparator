module FourBC_tb();
  	logic [2:0] eq;
  	logic [3:0] a, b;
	
	initial begin
    	a = 4'b0100;
   		b = 4'b0101;
  	end
    
    // clk has 50% duty cycle, 10ns period
    FourBC b0Comparator (.a(a), .b(b), .eq(eq));
  
endmodule