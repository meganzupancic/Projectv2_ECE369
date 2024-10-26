`timescale 1ns / 1ps

module Top_Level_tb();

    // Define testbench signals
    reg Clk_tb;
    reg Rst_tb;
    
    // Internal signals to monitor
    wire [31:0] PC_current;
    wire [31:0] DestRegValue;
    
    // Instantiate the Top_Level module
    Top_Level DUT (
        .Rst(Rst_tb),
        .Clk(Clk_tb)
    );

    // Connect the internal signals to the DUT's output signals
    assign PC_current = DUT.PCAdder_out_IF;       // Connect to the PC output
    assign DestRegValue = DUT.mux3_result_WB;     // Connect to the WriteBack register value

    // Clock generation
    initial begin
        Clk_tb = 0;
        forever #5 Clk_tb = ~Clk_tb;  // 10ns clock period
    end

    // Reset sequence
    //initial begin
        
    //    Rst_tb = 1;
    //    #20;
    //    Rst_tb = 0;
    //end
    
    

    // Monitor the values of PC and destination register
    initial begin
    
        //$display("%h", DUT.JR);
        
        // Display header
        $display("Time\t\tPC\t\tDestination Register Value");
        $display("---------------------------------------------");
        
        // Monitor specific signals at every positive edge of the clock
        forever begin
            @(posedge Clk_tb);  // Wait for the positive edge of Clk
            $display("%0dns\t%h\t%h", $time, PC_current, DestRegValue);
        end
    end

    // Simulation stop condition (adjust based on program length)
    initial begin
        #60;
        //$finish;
    end

endmodule