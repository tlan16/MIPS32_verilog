// IF_PC_Add add the pc by digital four.

module IF_PC_Add(
		    input [31:0]  PC_IF,
		    output [31:0] PC_Plus_4_IF
		    );

   assign PC_Plus_4_IF=PC_IF + 4;

endmodule // IF_PC_Add




   
   
