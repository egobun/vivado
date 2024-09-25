/*`timescale 1ns/ 100ps;

module tb;

  logic [1:0] SW;
  logic [3:0] LED;

  logic_ex u_logic_ex (.*);

  // Stimulus
  initial begin
    $printtimescale(tb);
    SW = '0;
    for (int i = 0; i < 4; i++) begin
      $display("Setting switches to %2b", i[1:0]);
      SW  = i[1:0];
      #100;
    end
    $display("PASS: logic_ex test PASSED!");
    $stop;
  end

  // Checking
  always @(SW, LED) begin
    if (!SW[0] == LED[0]) begin
      $display("FAIL: NOT Gate mismatch");
      $stop;
    end
    if (!SW[1] == LED[1]) begin
      $display("FAIL: NOT Gate mismatch");
      $stop;
    end
    if (!SW[0] == LED[2]) begin
      $display("FAIL: NOT Gate mismatch");
      $stop;
    end
    if (!SW[1] == LED[3]) begin
      $display("FAIL: NOT Gate mismatch");
      $stop;
    end
  end
endmodule // tb
*/