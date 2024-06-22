`timescale 1ns/1ps
module test_bench;

    // Inputs
    reg a, b, cin;
    
    // Outputs
    wire sum, cout;
    
    // Instantiate the full adder using different implementations
    full_adder_with_half_adder_behavioral dut_behavioral (
        .a(a),
        .b(b),
        .cin(cin),
        .sum(sum),
        .cout(cout)
    );

    full_adder_with_half_adder_dataflow dut_dataflow (
        .a(a),
        .b(b),
        .cin(cin),
        .sum(sum),
        .cout(cout)
    );

    full_adder_with_half_adder_structural dut_structural (
        .a(a),
        .b(b),
        .cin(cin),
        .sum(sum),
        .cout(cout)
    );
    
    // Clock generation
    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0, test_bench);
        
        // Test case 1: a=1, b=1, cin=0
        a = 1; b = 1; cin = 0;
        #10;
        
        // Test case 2: a=1, b=0, cin=1
        a = 1; b = 0; cin = 1;
        #10;
        
        // Test case 3: a=0, b=1, cin=1
        a = 0; b = 1; cin = 1;
        #10;
        
        // Test case 4: a=0, b=0, cin=0
        a = 0; b = 0; cin = 0;
        #10;
        
        $finish;
    end

endmodule
