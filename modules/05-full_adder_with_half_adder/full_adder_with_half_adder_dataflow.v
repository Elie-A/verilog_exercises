`timescale 1ns/1ps
module full_adder_with_half_adder_dataflow(
    input wire a, b, cin,
    output wire sum, cout
);

    // Internal wires
    wire s1, c1, s2, c2;
    
    // Dataflow equations
    assign {c1, s1} = a + b;
    assign {c2, sum} = s1 + cin;
    assign cout = c1 | c2;

endmodule
