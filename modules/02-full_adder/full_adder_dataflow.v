`timescale 1ns/1ps
module full_adder_dataflow (
  input a,    // Input 'a'
  input b,    // Input 'b'
  input cin,  // Input 'cin' (Carry-in)
  output s,   // Output 's' (Sum)
  output cout // Output 'cout' (Carry-out)
);

  assign s = a ^ b ^ cin;  // Dataflow expression for sum
  assign cout = (a & b) | (b & cin) | (cin & a);  // Dataflow expression for carry-out

endmodule
