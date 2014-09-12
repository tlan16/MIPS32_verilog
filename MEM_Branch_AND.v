// perform an logig and of branch_ID and zero_ID

module MEM_Branch_AND(
		      input Branch_MEM, // actually is ID stage signal
		      input  Zero_MEM,
		      output PCSrc_MEM
		      );

   assign PCSrc_MEM = Branch_MEM & Zero_MEM;

endmodule // MEM_Branch_AND




   
   
