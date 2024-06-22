`timescale 1ns/1ps
module full_subtractor_behavioral (
  input a,    // Input 'a'
  input b,    // Input 'b'
  input bin,  // Borrow-in 'bin'
  output reg diff,   // Output 'diff' (Difference)
  output reg bout // Output 'bout' (Borrow-out)
);

  // Combinational logic equations for difference and borrow-out
  always @(*) begin
    diff = a ^ b ^ bin;     // Difference
    bout = (~a & b) | (~a & bin) | (b & bin); // Borrow-out
  end

endmodule
