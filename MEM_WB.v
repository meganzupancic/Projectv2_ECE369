`timescale 1ns / 1ps

module MEM_WB(MemtoReg_in_MEMWB, RegWrite_in_MEMWB, ALUResult_in_MEMWB, 
                ReadData_in_MEMWB, mux2_result_in_MEMWB, 
                MemtoReg_out_MEMWB, RegWrite_out_MEMWB, ALUResult_out_MEMWB, 
                ReadData_out_MEMWB, mux2_result_out_MEMWB,
                Clk_in);

  input MemtoReg_in_MEMWB;
  input RegWrite_in_MEMWB;
  input [31:0]ALUResult_in_MEMWB;
  input [4:0] ReadData_in_MEMWB;
  input [4:0] mux2_result_in_MEMWB;
  input Clk_in;

  output reg MemtoReg_out_MEMWB;
  output reg RegWrite_out_MEMWB;
  output reg [31:0]ALUResult_out_MEMWB;
  output reg [4:0] ReadData_out_MEMWB;
  output reg [4:0] mux2_result_out_MEMWB;

  always @(posedge Clk_in) begin
    MemtoReg_out_MEMWB = MemtoReg_in_MEMWB;
    RegWrite_out_MEMWB = RegWrite_in_MEMWB;
    ALUResult_out_MEMWB = ALUResult_in_MEMWB;
    ReadData_out_MEMWB = ReadData_in_MEMWB;
    mux2_result_out_MEMWB = mux2_result_in_MEMWB;
  end


endmodule