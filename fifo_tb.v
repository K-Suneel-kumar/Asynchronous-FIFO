`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:11:46 08/09/2021
// Design Name:   Asynchronous_FIFO
// Module Name:   E:/xil/Asynchronous_FIFO/fifo_tb.v
// Project Name:  Asynchronous_FIFO
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Asynchronous_FIFO
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module fifo_tb;

	// Inputs
	reg read_clk;
	reg write_clk;
	reg reset;

	// Outputs
	wire [7:0] data_out;
	wire r_empty;
	wire w_full;

	// Instantiate the Unit Under Test (UUT)
	Asynchronous_FIFO uut (
		.read_clk(read_clk), 
		.write_clk(write_clk), 
		.reset(reset), 
		.data_out(data_out), 
		.r_empty(r_empty), 
		.w_full(w_full)
	);

	initial begin
		// Initialize Inputs
		read_clk = 0;
		write_clk = 0;
		reset = 1;
		#2 reset=0;
	end
		// Wait 100 ns for global reset to finish
		always begin
		#2.5 write_clk = ~write_clk;
		end
		always begin
		#25 read_clk = ~read_clk;
		end
        
		// Add stimulus here

      
endmodule

