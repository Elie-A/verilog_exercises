`timescale 1ns/1ps
module half_subtractor_behavioral (
  input a,    // Input 'a'
  input b,    // Input 'b'
  output reg diff,   // Output 'diff' (Difference)
  output reg borrow  // Output 'borrow'
);

  // Combinational logic equations for difference and borrow
  always @(*) begin
    diff = a ^ b;  // Difference
    borrow = a & ~b;  // Borrow
  end

endmodule
