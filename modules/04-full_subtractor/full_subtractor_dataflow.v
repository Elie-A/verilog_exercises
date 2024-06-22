`timescale 1ns/1ps
module full_subtractor_dataflow (
  input a,    // Input 'a'
  input b,    // Input 'b'
  input bin,  // Borrow-in 'bin'
  output diff,   // Output 'diff' (Difference)
  output bout // Output 'bout' (Borrow-out)
);

  assign diff = a ^ b ^ bin;     // Dataflow expression for difference
  assign bout = (~a & b) | (~a & bin) | (b & bin); // Dataflow expression for borrow-out

endmodule
