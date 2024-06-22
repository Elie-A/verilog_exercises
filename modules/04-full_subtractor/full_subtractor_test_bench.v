`timescale 1ns/1ps
module full_subtractor_test_bench;

  // Declare registers
  reg a, b, bin;    // Registers for inputs
  
  // Declare wires
  wire d1, d2, d3;   // Wires for output 'diff' from different modules
  wire b1, b2, b3;   // Wires for output 'bout' from different modules
  
  // Instantiate full_subtractor_behavioral module
  full_subtractor_behavioral fs_behav (.a(a), .b(b), .bin(bin), .diff(d1), .bout(b1));
  
  // Instantiate full_subtractor_dataflow module
  full_subtractor_dataflow fs_data (.a(a), .b(b), .bin(bin), .diff(d2), .bout(b2));
  
  // Instantiate full_subtractor_structural module
  full_subtractor_structural fs_struct (.a(a), .b(b), .bin(bin), .diff(d3), .bout(b3));
  
  // Initial block for simulation
  initial begin
    $dumpvars(1, full_subtractor_test_bench); // Enable waveform dumping for simulation
    
    // Test case 1
    a = 1'b0; b = 1'b0; bin = 1'b0;   // Assign inputs
    #10;                             // Wait for 10 time units
    $display("Test case 1:");
    $display("Behavioral - diff=%b, bout=%b", d1, b1);
    $display("Dataflow - diff=%b, bout=%b", d2, b2);
    $display("Structural - diff=%b, bout=%b", d3, b3);
    
    // Test case 2
    a = 1'b0; b = 1'b1; bin = 1'b0;   // Assign inputs
    #10;                             // Wait for 10 time units
    $display("Test case 2:");
    $display("Behavioral - diff=%b, bout=%b", d1, b1);
    $display("Dataflow - diff=%b, bout=%b", d2, b2);
    $display("Structural - diff=%b, bout=%b", d3, b3);
    
    // Test case 3
    a = 1'b1; b = 1'b0; bin = 1'b0;   // Assign inputs
    #10;                             // Wait for 10 time units
    $display("Test case 3:");
    $display("Behavioral - diff=%b, bout=%b", d1, b1);
    $display("Dataflow - diff=%b, bout=%b", d2, b2);
    $display("Structural - diff=%b, bout=%b", d3, b3);
    
    // Test case 4
    a = 1'b1; b = 1'b1; bin = 1'b0;   // Assign inputs
    #10;                             // Wait for 10 time units
    $display("Test case 4:");
    $display("Behavioral - diff=%b, bout=%b", d1, b1);
    $display("Dataflow - diff=%b, bout=%b", d2, b2);
    $display("Structural - diff=%b, bout=%b", d3, b3);
    
    // Test case 5
    a = 1'b0; b = 1'b0; bin = 1'b1;   // Assign inputs
    #10;                             // Wait for 10 time units
    $display("Test case 5:");
    $display("Behavioral - diff=%b, bout=%b", d1, b1);
    $display("Dataflow - diff=%b, bout=%b", d2, b2);
    $display("Structural - diff=%b, bout=%b", d3, b3);
    
    // Test case 6
    a = 1'b0; b = 1'b1; bin = 1'b1;   // Assign inputs
    #10;                             // Wait for 10 time units
    $display("Test case 6:");
    $display("Behavioral - diff=%b, bout=%b", d1, b1);
    $display("Dataflow - diff=%b, bout=%b", d2, b2);
    $display("Structural - diff=%b, bout=%b", d3, b3);
    
    // Test case 7
    a = 1'b1; b = 1'b0; bin = 1'b1;   // Assign inputs
    #10;                             // Wait for 10 time units
    $display("Test case 7:");
    $display("Behavioral - diff=%b, bout=%b", d1, b1);
    $display("Dataflow - diff=%b, bout=%b", d2, b2);
    $display("Structural - diff=%b, bout=%b", d3, b3);
    
    // Test case 8
    a = 1'b1; b = 1'b1; bin = 1'b1;   // Assign inputs
    #10;                             // Wait for 10 time units
    $display("Test case 8:");
    $display("Behavioral - diff=%b, bout=%b", d1, b1);
    $display("Dataflow - diff=%b, bout=%b", d2, b2);
    $display("Structural - diff=%b, bout=%b", d3, b3);
    
    // End simulation
    $finish;
  end
endmodule
