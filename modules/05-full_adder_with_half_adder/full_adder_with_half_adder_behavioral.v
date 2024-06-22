`timescale 1ns/1ps
module full_adder_with_half_adder_behavioral(
    input wire a, b, cin,
    output wire sum, cout
);

    // Instantiate half adders
    wire ha1_sum, ha1_carry, ha2_carry;
    half_adder ha1(a, b, ha1_sum, ha1_carry);
    half_adder ha2(ha1_sum, cin, sum, ha2_carry);
    
    // Output carry
    assign cout = ha1_carry | ha2_carry;

endmodule
