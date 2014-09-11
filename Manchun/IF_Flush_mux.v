// IF_Flush_mux

module IF_Flush_mux(
				input PCSrc_ID,
				input Jump_control_ID,
				input [31:0] Instruction_to_mux_IF,
				output [31:0] Instruction_IF
);

assign Instruction_IF = (PCSrc_ID || Jump_control_ID) ? 32'b0: Instruction_to_mux_IF;

endmodule