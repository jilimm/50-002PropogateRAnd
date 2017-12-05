/*
   This file was generated automatically by the Mojo IDE version B1.3.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

/*
   Parameters:
     WIDTH = 3
*/
module register_4 (
    input clk,
    input en,
    input rst,
    input [2:0] data,
    output reg [2:0] out
  );
  
  localparam WIDTH = 2'h3;
  
  
  reg [2:0] M_regs_d, M_regs_q = 1'h0;
  
  always @* begin
    M_regs_d = M_regs_q;
    
    if (en == 1'h1) begin
      M_regs_d = data;
    end else begin
      M_regs_d = M_regs_q;
    end
    out = M_regs_q;
  end
  
  always @(posedge clk) begin
    if (rst == 1'b1) begin
      M_regs_q <= 1'h0;
    end else begin
      M_regs_q <= M_regs_d;
    end
  end
  
endmodule
