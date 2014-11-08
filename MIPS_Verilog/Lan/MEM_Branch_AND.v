// perform an logic and of Branch_MEM and Zero_MEM
// note this module is relocated from MEM stage to ID stage
// Branch_MEM is connected to Branch_ID in top module.
// Zero_MEM is the comparator output of ID_Read_data_Mux
// The output PCSrc_MEM indicated a branch happened. It is feed to IF_PC_Mux to handle branch 
// hazard


module MEM_Branch_AND(
		      input Branch_MEM, // actually is ID stage signal
		      input  Zero_MEM,
		      output PCSrc_MEM
		      );

   assign PCSrc_MEM = Branch_MEM & Zero_MEM;

endmodule // MEM_Branch_AND




   
   
