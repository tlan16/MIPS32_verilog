// Comments and desciption of modules have been deliberately ommitted.
// It is up to the student to document and describe the system.
// THe MEM_Branch_AND is now move to ID state to reducing the delay of Branches

module ID_Branch_AND(
		      input Branch_ID,
		      input  Zero_ID,
		      output PCSrc_ID
		      );

   assign PCSrc_ID = Branch_ID & Zero_ID;

endmodule // MEM_Branch_ID




   
   
