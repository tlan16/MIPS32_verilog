module MIPS32 (SW, LEDR, CLOCK_50); 
input[17:0] SW;     // toggle switches 
input CLOCK_50;
output reg [17:0] LEDR; // red LEDs 
always@(posedge CLOCK_50) begin
	LEDR <= SW;
end
endmodule 