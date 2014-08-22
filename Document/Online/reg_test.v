module reg_test;
   wire [31:0] data_rs, data_rt;

   reg [4:0]  addr_rs, addr_rt, write_addr;
   reg [31:0] write_data;
   reg        regWrite;

   initial
     begin
        addr_rs = 0;
        addr_rt = 1;
        regWrite = 0;

        #1 addr_rs = 2;
        addr_rt = 3;
        write_addr = 3;
        write_data = 100;
        
        #1 addr_rs = 4;
        addr_rt = 5;
        regWrite = 1;

        #1 regWrite = 0;
        addr_rt = 3;

        #1 addr_rs = 6;
        regWrite = 1;
        write_addr = 6;
        write_data = 100;
        
        #1 $finish;
     end

   registerfile regfile(.data_rs_out(data_rs), .data_rt_out(data_rt),
                        .rs_in(addr_rs), .rt_in(addr_rt),
                        .write_addr_in(write_addr), .write_data_in(write_data), .regWrite_in(regWrite));
   
endmodule