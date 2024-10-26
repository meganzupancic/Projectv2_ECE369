`timescale 1ns / 1ps


module IF_ID(PCAdder_in_IFID, Instruction_in_IFID, PCAdder_out_IFID, Instruction_out_IFID,
            Clk_in); 
  
  input [31:0] PCAdder_in_IFID;
  input [31:0] Instruction_in_IFID;
  input Clk_in;

  output reg [31:0] PCAdder_out_IFID;
  output reg [31:0] Instruction_out_IFID;

always @(posedge Clk_in) begin
    PCAdder_out_IFID <= PCAdder_in_IFID;
    Instruction_out_IFID <= Instruction_in_IFID;
  end


endmodule









