`timescale 1ns/1ps
module half_subtractor_dataflow (
  input a,    // Input 'a'
  input b,    // Input 'b'
  output diff,   // Output 'diff' (Difference)
  output borrow // Output 'borrow'
);

  assign diff = a ^ b;  // Dataflow expression for difference
  assign borrow = a & ~b;  // Dataflow expression for borrow

endmodule
