`timescale 1ns/1ps
module full_subtractor_structural (
  input a,    // Input 'a'
  input b,    // Input 'b'
  input bin,  // Borrow-in 'bin'
  output diff,   // Output 'diff' (Difference)
  output bout // Output 'bout' (Borrow-out)
);

  xor gate_xor1 (diff1, a, b);          // XOR gate for first difference
  xor gate_xor2 (diff, diff1, bin);     // XOR gate for final difference
  and gate_and1 (and1, ~a, b);          // AND gate for first borrow-out term
  and gate_and2 (and2, ~a, bin);        // AND gate for second borrow-out term
  and gate_and3 (and3, b, bin);         // AND gate for third borrow-out term
  or gate_or (bout, and1, and2, and3);  // OR gate for final borrow-out

endmodule
