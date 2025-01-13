`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.01.2025 18:25:55
// Design Name: 
// Module Name: johnson_counter_4bit_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module johnson_counter_4bit_tb( );

    reg clk,rst;
    wire [3:0] out;
    
    johnson_counter_8bit uut(clk,rst,out);
   
    always 
        begin
            #5 clk=~clk;
            
         
        end
       initial
        begin
             clk=0;
           rst=0;
              #10 rst=1;
              #10 rst=0;
                      
                      
                      
                      #100 $finish; 
                      
           
        end

endmodule
