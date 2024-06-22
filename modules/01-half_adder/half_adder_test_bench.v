`timescale 1ns/1ps
module half_adder_test_bench;
  // Declare registers
  reg d;    // Register 'd' for input 'a'
  reg e;    // Register 'e' for input 'b'
  
  // Declare wires
  wire f1, f2, f3;   // Wire 'f' for output 's' (Sum) from different modules
  wire g1, g2, g3;   // Wire 'g' for output 'c' (Carry) from different modules
  
  // Instantiate half_adder_behavioral module
  half_adder_behavioral half_adder_behav (.a(d), .b(e), .s(f1), .c(g1));
  
  // Instantiate half_adder_dataflow module
  half_adder_dataflow half_adder_data (.a(d), .b(e), .s(f2), .c(g2));
  
  // Instantiate half_adder_structural module
  half_adder_structural half_adder_struct (.a(d), .b(e), .s(f3), .c(g3));
  
  // Initial block for simulation
  initial begin
    $dumpvars(1, half_adder_test_bench); // Enable waveform dumping for simulation
    
    // Test case 1
    d = 1'b1; e = 1'b1;        // Assign inputs
    #10;                       // Wait for 10 time units
    $display("Test case 1:");
    $display("Behavioral - s=%b, c=%b", f1, g1);
    $display("Dataflow - s=%b, c=%b", f2, g2);
    $display("Structural - s=%b, c=%b", f3, g3);
    
    // Test case 2
    d = 1'b0; e = 1'b1;        // Assign inputs
    #10;                       // Wait for 10 time units
    $display("Test case 2:");
    $display("Behavioral - s=%b, c=%b", f1, g1);
    $display("Dataflow - s=%b, c=%b", f2, g2);
    $display("Structural - s=%b, c=%b", f3, g3);
    
    // Test case 3
    d = 1'b1; e = 1'b0;        // Assign inputs
    #10;                       // Wait for 10 time units
    $display("Test case 3:");
    $display("Behavioral - s=%b, c=%b", f1, g1);
    $display("Dataflow - s=%b, c=%b", f2, g2);
    $display("Structural - s=%b, c=%b", f3, g3);
    
    // Test case 4
    d = 1'b0; e = 1'b0;        // Assign inputs
    #10;                       // Wait for 10 time units
    $display("Test case 4:");
    $display("Behavioral - s=%b, c=%b", f1, g1);
    $display("Dataflow - s=%b, c=%b", f2, g2);
    $display("Structural - s=%b, c=%b", f3, g3);
  end
endmodule
