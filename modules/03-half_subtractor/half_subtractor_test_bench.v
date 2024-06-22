`timescale 1ns/1ps
module half_subtractor_test_bench;

  // Declare registers
  reg a, b;    // Registers for inputs
  
  // Declare wires
  wire d1, d2, d3;   // Wires for output 'diff' from different modules
  wire b1, b2, b3;   // Wires for output 'borrow' from different modules
  
  // Instantiate half_subtractor_behavioral module
  half_subtractor_behavioral hs_behav (.a(a), .b(b), .diff(d1), .borrow(b1));
  
  // Instantiate half_subtractor_dataflow module
  half_subtractor_dataflow hs_data (.a(a), .b(b), .diff(d2), .borrow(b2));
  
  // Instantiate half_subtractor_structural module
  half_subtractor_structural hs_struct (.a(a), .b(b), .diff(d3), .borrow(b3));
  
  // Initial block for simulation
  initial begin
    $dumpvars(1, half_subtractor_test_bench); // Enable waveform dumping for simulation
    
    // Test case 1
    a = 1'b0; b = 1'b0;      // Assign inputs
    #10;                     // Wait for 10 time units
    $display("Test case 1:");
    $display("Behavioral - diff=%b, borrow=%b", d1, b1);
    $display("Dataflow - diff=%b, borrow=%b", d2, b2);
    $display("Structural - diff=%b, borrow=%b", d3, b3);
    
    // Test case 2
    a = 1'b0; b = 1'b1;      // Assign inputs
    #10;                     // Wait for 10 time units
    $display("Test case 2:");
    $display("Behavioral - diff=%b, borrow=%b", d1, b1);
    $display("Dataflow - diff=%b, borrow=%b", d2, b2);
    $display("Structural - diff=%b, borrow=%b", d3, b3);
    
    // Test case 3
    a = 1'b1; b = 1'b0;      // Assign inputs
    #10;                     // Wait for 10 time units
    $display("Test case 3:");
    $display("Behavioral - diff=%b, borrow=%b", d1, b1);
    $display("Dataflow - diff=%b, borrow=%b", d2, b2);
    $display("Structural - diff=%b, borrow=%b", d3, b3);
    
    // Test case 4
    a = 1'b1; b = 1'b1;      // Assign inputs
    #10;                     // Wait for 10 time units
    $display("Test case 4:");
    $display("Behavioral - diff=%b, borrow=%b", d1, b1);
    $display("Dataflow - diff=%b, borrow=%b", d2, b2);
    $display("Structural - diff=%b, borrow=%b", d3, b3);
    
    // End simulation
    $finish;
  end
endmodule
