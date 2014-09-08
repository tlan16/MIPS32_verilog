// Comments and desciption of modules have been deliberately ommitted.
// It is up to the student to document and describe the system.
//condition ? if true : if false

module IF_PC_Mux(
		 input [31:0] PC_Plus_4_IF,
		 input [31:0] Branch_Dest_ID,
		 input PCSrc_ID,
		 output [31:0]Next_PC_IF
		 );

assign Next_PC_IF = PCSrc_ID ? Branch_Dest_ID : PC_Plus_4_IF;



   

endmodule // IF_PC_Mux


   
   
