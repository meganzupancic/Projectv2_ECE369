module Branch(Branch, Zero, PCSrc);

  input Branch;
  input Zero;

  output reg PCSrc;
  
  /*initial begin
    assign PCSrc = 0;
  end
  */
  always @(Zero) begin
    PCSrc <= Branch & Zero;
  end

endmodule
