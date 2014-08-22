// `include "alu.v"

module alu_test;
   reg [31:0] a, b;
   reg [2:0]  control;

   wire [31:0] alu_out;
   wire        zero;

   parameter ADD = 3'b010;
   parameter SUB = 3'b110;
   parameter AND = 3'b000;
   parameter OR  = 3'b001;
   parameter SOL = 3'b111;
   
   
   initial
     begin
        // $dumpfile("alu_test.vcd");
        // $dumpvars(0, alu_test);
        a <= 32'h00ff00ff;
        b <= 32'h11111111;
        control <= ADD;

        #1 control <= SUB;
        a <= 0;
        b <= 1;

        #1 control <= AND;
        a <= 32'h0f0f0f0f;
        b <= 32'hffffffff;

        #1 control <= OR;
        a <= 32'h0f0f0f0f;
        b <= 32'hf0f0f0f0;
        
        #1 control <= SOL;
        a <= 32'hffffffff;
        b <= 32'h0fffffff;

        #1 b <= 32'hffffffff;
        a <= 32'h0fffffff;

        #1 control <= 3'bxxx;
        #1 $finish;
     end
   
   alu alu_unit(.a_in(a), .b_in(b), .control(control),
                .result_out(alu_out), .zero_out(zero));
   
endmodule