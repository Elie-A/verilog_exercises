`timescale 1ns/1ps
module half_subtractor_structural (
  input a,    // Input 'a'
  input b,    // Input 'b'
  output diff,   // Output 'diff' (Difference)
  output borrow // Output 'borrow'
);

  xor gate_xor (diff, a, b);  // XOR gate for difference
  and gate_and (borrow, a, ~b);  // AND gate for borrow

endmodule
