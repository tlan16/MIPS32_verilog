// Comments and desciption of modules have been deliberately ommitted.
// It is up to the student to document and describe the system.

module ID_Branch_AND(
		      input Branch_MEM,
		      input  Zero_ID,
		      output PCSrc_MEM
		      );

   assign PCSrc_MEM = Branch_MEM & Zero_ID;

endmodule // ID_Branch_AND




   
   
