`timescale 1ns/1ps
module full_adder_with_half_adder_structural(
    input wire a, b, cin,
    output wire sum, cout
);

    // Internal wires
    wire h1_sum, h1_carry, h2_sum, h2_carry;
    
    // Instantiate half adders
    half_adder ha1(a, b, h1_sum, h1_carry);
    half_adder ha2(h1_sum, cin, sum, h2_carry);
    
    // Output carry
    assign cout = h1_carry | h2_carry;

endmodule
