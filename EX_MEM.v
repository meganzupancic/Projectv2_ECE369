`timescale 1ns / 1ps

module EX_MEM(MemWrite_in_EXMEM, MemRead_in_EXMEM, Branch_in_EXMEM, MemtoReg_in_EXMEM, 
                RegWrite_in_EXMEM, ALUAddResult_in_EXMEM, Zero_in_EXMEM, ALUResult_in_EXMEM, 
                ReadData2_in_EXMEM, mux2_Result_in_EXMEM,
                MemWrite_out_EXMEM, MemRead_out_EXMEM, Branch_out_EXMEM, MemtoReg_out_EXMEM, 
                RegWrite_out_EXMEM, ALUAddResult_out_EXMEM, Zero_out_EXMEM, ALUResult_out_EXMEM, 
                ReadData2_out_EXMEM, mux2_Result_out_EXMEM,
                Clk_in, Rst);
  
  input MemWrite_in_EXMEM;
  input MemRead_in_EXMEM;
  input Branch_in_EXMEM;
  input MemtoReg_in_EXMEM;
  input RegWrite_in_EXMEM;
  input [31:0] ALUAddResult_in_EXMEM;
  input Zero_in_EXMEM;
  input [31:0] ALUResult_in_EXMEM;
  input [31:0] ReadData2_in_EXMEM;
  input [4:0] mux2_Result_in_EXMEM;
  input Clk_in;
  input Rst;

  output reg MemWrite_out_EXMEM;
  output reg MemRead_out_EXMEM;
  output reg Branch_out_EXMEM;
  output reg MemtoReg_out_EXMEM;
  output reg RegWrite_out_EXMEM;
  output reg [31:0] ALUAddResult_out_EXMEM;
  output reg Zero_out_EXMEM;
  output reg [31:0] ALUResult_out_EXMEM;
  output reg [31:0] ReadData2_out_EXMEM;
  output reg [4:0] mux2_Result_out_EXMEM;
  
  always @(posedge Rst) begin
      MemWrite_out_EXMEM <= 0;
      MemRead_out_EXMEM <= 0;
      Branch_out_EXMEM <= 0;
      MemtoReg_out_EXMEM <= 0;
      RegWrite_out_EXMEM <= 0;
      ALUAddResult_out_EXMEM <= 0;
      Zero_out_EXMEM <= 0;
      ALUResult_out_EXMEM <= 0;
      ReadData2_out_EXMEM <= 0;
      mux2_Result_out_EXMEM <= 0;
  end

  always @(posedge Clk_in) begin
      MemWrite_out_EXMEM <= MemWrite_in_EXMEM;
      MemRead_out_EXMEM <= MemRead_in_EXMEM;
      Branch_out_EXMEM <= Branch_in_EXMEM;
      MemtoReg_out_EXMEM <= MemtoReg_in_EXMEM;
      RegWrite_out_EXMEM <= RegWrite_in_EXMEM;
      ALUAddResult_out_EXMEM <= ALUAddResult_in_EXMEM;
      Zero_out_EXMEM <= Zero_in_EXMEM;
      ALUResult_out_EXMEM <= ALUResult_in_EXMEM;
      ReadData2_out_EXMEM <= ReadData2_in_EXMEM;
      mux2_Result_out_EXMEM <= mux2_Result_in_EXMEM;
  end


endmodule
