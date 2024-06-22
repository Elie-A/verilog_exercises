`timescale 1ns/1ps
module full_adder_behavioral (
  input a,    // Input 'a'
  input b,    // Input 'b'
  input cin,  // Input 'cin' (Carry-in)
  output s,   // Output 's' (Sum)
  output cout // Output 'cout' (Carry-out)
);

  assign s = a ^ b ^ cin;  // Sum
  assign cout = (a & b) | (b & cin) | (cin & a);  // Carry-out

endmodule
