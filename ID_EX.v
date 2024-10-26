`timescale 1ns / 1ps


module ID_EX(PCAddResult_in_IDEX, ReadData1_in_IDEX, ReadData2_in_IDEX, signExtend_in_IDEX, rt_in_IDEX, 
                rd_in_IDEX, RegWrite_in_IDEX, MemtoReg_in_IDEX, Branch_in_IDEX, MemRead_in_IDEX, 
                MemWrite_in_IDEX, RegDst_in_IDEX, ALUOp_in_IDEX, ALUSrc_in_IDEX, 
                PCAddResult_out_IDEX, ReadData1_out_IDEX, ReadData2_out_IDEX, signExtend_out_IDEX, 
                rt_out_IDEX, rd_out_IDEX, RegWrite_out_IDEX, MemtoReg_out_IDEX, Branch_out_IDEX, 
                MemRead_out_IDEX, MemWrite_out_IDEX, RegDst_out_IDEX, ALUOp_out_IDEX, ALUSrc_out_IDEX,
                Clk_in); 
  
  input [31:0] PCAddResult_in_IDEX;
  input [31:0] ReadData1_in_IDEX;
  input [31:0] ReadData2_in_IDEX;
  input [31:0] signExtend_in_IDEX;
  input [4:0] rt_in_IDEX;
  input [4:0] rd_in_IDEX;
  input RegWrite_in_IDEX;
  input MemtoReg_in_IDEX;
  input Branch_in_IDEX;
  input MemRead_in_IDEX;
  input MemWrite_in_IDEX;
  input RegDst_in_IDEX;
  input [5:0] ALUOp_in_IDEX;
  input ALUSrc_in_IDEX; 
  input Clk_in;

  output reg [31:0] PCAddResult_out_IDEX;
  output reg [31:0] ReadData1_out_IDEX;
  output reg [31:0] ReadData2_out_IDEX;
  output reg [31:0] signExtend_out_IDEX;
  output reg [4:0] rt_out_IDEX;
  output reg [4:0] rd_out_IDEX;
  output reg RegWrite_out_IDEX;
  output reg MemtoReg_out_IDEX;
  output reg Branch_out_IDEX;
  output reg MemRead_out_IDEX;
  output reg MemWrite_out_IDEX;
  output reg RegDst_out_IDEX;
  output reg [5:0] ALUOp_out_IDEX;
  output reg ALUSrc_out_IDEX;
  

  always @(posedge Clk_in) begin
    PCAddResult_out_IDEX <= PCAddResult_in_IDEX;
    ReadData1_out_IDEX <= ReadData1_in_IDEX;
    ReadData2_out_IDEX <= ReadData2_in_IDEX;
    signExtend_out_IDEX <= signExtend_in_IDEX;
    rt_out_IDEX <= rt_in_IDEX;
    rd_out_IDEX <= rd_in_IDEX;
    RegWrite_out_IDEX <= RegWrite_in_IDEX;
    MemtoReg_out_IDEX <= MemtoReg_in_IDEX;
    Branch_out_IDEX <= Branch_in_IDEX;
    MemRead_out_IDEX <= MemRead_in_IDEX;
    MemWrite_out_IDEX <= MemWrite_in_IDEX;
    RegDst_out_IDEX <= RegDst_in_IDEX;
    ALUOp_out_IDEX <= ALUOp_in_IDEX;
    ALUSrc_out_IDEX <= ALUSrc_in_IDEX; 
    
  end


endmodule
