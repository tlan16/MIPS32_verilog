// `timescale 1us / 1us
// `include "registerfile.v"

// Note: each memory location should be initialized to have value of its address

module mem_test;
   wire [31:0] data_out;

   reg [31:0] address;
   reg [31:0] data;
   reg        mem_read, mem_write;

   initial
     begin
        // $dumpfile("reg_test.vcd");
        // $dumpvars(0, reg_test);

        mem_read  = 1;
        mem_write = 0;
        address   = 32'b00000001;

        #1 mem_read = 0;
        mem_write = 1;
        address   = 32'b00000001;
        data      = ~address;

        #1 mem_read = 1;
        mem_write = 0;
        address   = 32'b00000010;

        #1 mem_read = 1;
        mem_write = 1;
        address   = 32'b00000010;
        data      = ~address;

        #1 mem_read = 1;
        mem_write = 0;
        address   = 32'b00000100;

        #1 mem_read = 0;
        mem_write = 1;
        address   = 32'b00000100;
        data      = ~address;
        
        #1 mem_read = 1;
        mem_write = 0;
        address   = 32'b00001000;

        #1 mem_read = 1;
        mem_write = 1;
        address   = 32'b00001000;
        data      = ~address;
        
        #1 $finish;
     end

   memory data_mem(.address(address), .write_data(write_data), .mem_read(mem_read), .mem_write(mem_write),
                   .data_out(data_out));
endmodule