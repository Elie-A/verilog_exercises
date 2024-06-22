`timescale 1ns/1ps
module full_adder_structural (
  input a,    // Input 'a'
  input b,    // Input 'b'
  input cin,  // Input 'cin' (Carry-in)
  output s,   // Output 's' (Sum)
  output cout // Output 'cout' (Carry-out)
);

  wire sum1, c1, c2;  // Intermediate wires

  // Structural modeling using gates
  xor (sum1, a, b);
  xor (s, sum1, cin);
  and (c1, sum1, cin);
  and (c2, a, b);
  or (cout, c1, c2);

endmodule
