// chose what is next pc, normally pc_plus_4, but brach and jump are handled, and coresponding pc is passed over.
// PCSrc_MEM trigles the branch response, it is from logic and of zero and ID_Branch
// Jump_Control_ID trigles the jump response, it is from ID_Control

module IF_PC_Mux(
		 input [31:0] PC_Plus_4_IF,
		 input [31:0] Branch_Dest_MEM,
		 input [31:0] Jump_Dest_ID,
		 input 		  PCSrc_MEM, // actually ID stage
		 input 		  Jump_Control_ID,
		 output [31:0]Next_PC_IF
		 );
	
   assign Next_PC_IF = Jump_Control_ID ? Jump_Dest_ID : (PCSrc_MEM ? Branch_Dest_MEM : PC_Plus_4_IF);
/*
initial
	begin
		Next_PC_IF <= 32'd0;
	end
	
wire [1:0] IF_PC_Mux_temp;
assign IF_PC_Mux_temp = {PCSrc_MEM,Jump_Control_ID};

always@(*)
	begin
		case(IF_PC_Mux_temp)
			2'b00: Next_PC_IF <= PC_Plus_4_IF;
			2'b01: Next_PC_IF <= Jump_Dest_ID;
			2'b10: Next_PC_IF <= Branch_Dest_MEM;
			default: Next_PC_IF <= PC_Plus_4_IF;
		endcase
	end
*/
endmodule // IF_PC_Mux


   
   
