`timescale 1ns/1ps
module full_adder_test_bench;
  // Declare registers
  reg a, b, cin;    // Registers for inputs
  
  // Declare wires
  wire s1, s2, s3;   // Wires for output 's' (Sum) from different modules
  wire cout1, cout2, cout3;   // Wires for output 'cout' (Carry-out) from different modules
  
  // Instantiate full_adder_behavioral module
  full_adder_behavioral fa_behav (.a(a), .b(b), .cin(cin), .s(s1), .cout(cout1));
  
  // Instantiate full_adder_dataflow module
  full_adder_dataflow fa_data (.a(a), .b(b), .cin(cin), .s(s2), .cout(cout2));
  
  // Instantiate full_adder_structural module
  full_adder_structural fa_struct (.a(a), .b(b), .cin(cin), .s(s3), .cout(cout3));
  
  // Initial block for simulation
  initial begin
    $dumpvars(1, full_adder_test_bench); // Enable waveform dumping for simulation
    
    // Test case 1
    a = 1'b0; b = 1'b0; cin = 1'b0;      // Assign inputs
    #10;                                 // Wait for 10 time units
    $display("Test case 1:");
    $display("Behavioral - s=%b, cout=%b", s1, cout1);
    $display("Dataflow - s=%b, cout=%b", s2, cout2);
    $display("Structural - s=%b, cout=%b", s3, cout3);
    
    // Test case 2
    a = 1'b0; b = 1'b0; cin = 1'b1;      // Assign inputs
    #10;                                 // Wait for 10 time units
    $display("Test case 2:");
    $display("Behavioral - s=%b, cout=%b", s1, cout1);
    $display("Dataflow - s=%b, cout=%b", s2, cout2);
    $display("Structural - s=%b, cout=%b", s3, cout3);
    
    // Test case 3
    a = 1'b0; b = 1'b1; cin = 1'b0;      // Assign inputs
    #10;                                 // Wait for 10 time units
    $display("Test case 3:");
    $display("Behavioral - s=%b, cout=%b", s1, cout1);
    $display("Dataflow - s=%b, cout=%b", s2, cout2);
    $display("Structural - s=%b, cout=%b", s3, cout3);
    
    // Test case 4
    a = 1'b0; b = 1'b1; cin = 1'b1;      // Assign inputs
    #10;                                 // Wait for 10 time units
    $display("Test case 4:");
    $display("Behavioral - s=%b, cout=%b", s1, cout1);
    $display("Dataflow - s=%b, cout=%b", s2, cout2);
    $display("Structural - s=%b, cout=%b", s3, cout3);

    // Test case 5
    a = 1'b1; b = 1'b0; cin = 1'b0;      // Assign inputs
    #10;                                 // Wait for 10 time units
    $display("Test case 5:");
    $display("Behavioral - s=%b, cout=%b", s1, cout1);
    $display("Dataflow - s=%b, cout=%b", s2, cout2);
    $display("Structural - s=%b, cout=%b", s3, cout3);
    
    // Test case 6
    a = 1'b1; b = 1'b0; cin = 1'b1;      // Assign inputs
    #10;                                 // Wait for 10 time units
    $display("Test case 6:");
    $display("Behavioral - s=%b, cout=%b", s1, cout1);
    $display("Dataflow - s=%b, cout=%b", s2, cout2);
    $display("Structural - s=%b, cout=%b", s3, cout3);
    
    // Test case 7
    a = 1'b1; b = 1'b1; cin = 1'b0;      // Assign inputs
    #10;                                 // Wait for 10 time units
    $display("Test case 7:");
    $display("Behavioral - s=%b, cout=%b", s1, cout1);
    $display("Dataflow - s=%b, cout=%b", s2, cout2);
    $display("Structural - s=%b, cout=%b", s3, cout3);
    
    // Test case 8
    a = 1'b1; b = 1'b1; cin = 1'b1;      // Assign inputs
    #10;                                 // Wait for 10 time units
    $display("Test case 8:");
    $display("Behavioral - s=%b, cout=%b", s1, cout1);
    $display("Dataflow - s=%b, cout=%b", s2, cout2);
    $display("Structural - s=%b, cout=%b", s3, cout3);
  end
endmodule
