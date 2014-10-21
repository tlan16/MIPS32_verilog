`timescale 1ns / 1ps

module pipeline();
	
	// IFETCH
	wire	[31:0]	IF_ID_instrout, IF_ID_npcout;
	wire				MEM_PCSrc;
	wire	[31:0]	EX_MEM_NPC;

	IFETCH IFETCH1	(.MEM_PCSrc(MEM_PCSrc),
						.EX_MEM_NPC(EX_MEM_NPC),
						.IF_ID_instr(IF_ID_instrout),
						.IF_ID_npc(IF_ID_npcout));
						 
   initial begin
		#24 $stop;	
   end
	
   // IDECODE
	wire	[4:0]		MEM_WB_rd;
	wire				MEM_WB_regwrite;
	wire	[31:0]	WB_mux5_writedata;	
	wire	[1:0]		wb_ctlout;
	wire	[2:0]		m_ctlout;
	wire				regdst, alusrc;
	wire	[1:0]		aluop; 
	wire	[31:0]	npcout, rdata1out, rdata2out, s_extendout;
	wire	[4:0]		instrout_2016, instrout_1511;

	IDECODE IDECODE2	(.IF_ID_instrout(IF_ID_instrout),
							.IF_ID_npcout(IF_ID_npcout),
							.MEM_WB_rd(MEM_WB_rd),
							.MEM_WB_regwrite(MEM_WB_regwrite),
							.WB_mux5_writedata(WB_mux5_writedata),
							.wb_ctlout(wb_ctlout),
							.m_ctlout(m_ctlout),
							.regdst(regdst),
							.aluop(aluop),
							.alusrc(alusrc),
							.npcout(npcout),
							.rdata1out(rdata1out),
							.rdata2out(rdata2out),
							.s_extendout(s_extendout),
							.instrout_2016(instrout_2016),
							.instrout_1511(instrout_1511));

	// EXECUTE
	wire	[1:0]		wb_ctlout_pipe;
	wire				branch, memread, memwrite;
	wire				zero;
	wire	[31:0]	alu_result, rdata2out_pipe;
	wire	[4:0]		five_bit_muxout;
	
	//Instantiate Execute Unit Here 
	
	// MEMORY
	wire				MEM_WB_memtoreg;
	wire	[31:0]	read_data, mem_alu_result;

    //Instantiate Memory Unit Here

	// WRITEBACK
    
      //Instantiate Write Back Unit Here
										
endmodule // pipeline
