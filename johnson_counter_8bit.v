`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.01.2025 17:59:50
// Design Name: 
// Module Name: johnson_counter_8bit
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


module johnson_counter_8bit(clk,rst,out);

    input clk,rst;
    output reg [3:0] out;
    
    reg [3:0] counter;
    
    always @(posedge clk or posedge rst)
        begin
            if(rst) begin
               // counter<=4'd0;
                out <= 4'd0;
            end
            else begin
               
                   
                    
                    out[3] <= ~out[0];
                    out[2] <= out[3];
                    out[1] <= out[2];
                    out[0] <= out[1];
                                                                                
                
              
            
            end
        
        end
    
    
endmodule
