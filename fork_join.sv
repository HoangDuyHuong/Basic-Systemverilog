module testbench;
// 	if else syntax
//   typedef enum logic[1:0]{
//   	IDLE    = 2'b00,
//     START   = 2'b01,
//     RUNNING = 2'b10,
//     DONE    = 2'b11
//   } state;
  
//   state sta;
//   initial begin
//   sta = START;
//     if (sta inside {IDLE, START}) begin
//       $display("Current state is either IDLE or START");
//     end else if (sta inside {RUNNING}) begin
//       $display("Current state is: RUNNING");
//     end else begin
//       $display("Current state is: DONE");
//     end
//   $finish;
//   end
  
// case syntax
//   logic [1:0] in;
//   logic [3:0] out;
//   initial begin
//   	in = 2'b10;
//     case (in)
//       2'b00: out = 4'b0001;
//       2'b01: out = 4'b0010;
//       2'b10: out = 4'b0100;
//       2'b11: out = 4'b1000;
//     endcase
//     $display("In = %b, Out  = %b", in,out);
//   end
  
//   Loop
//   initial begin
//     for (int i = 0, j = 9; i<10 ; i = i + 1, j = j - 1) begin
//       $display("Count i = %0d, j = %0d", i, j);
//     end
  
//   end
  
//   fork...join
  
  initial begin
    $display("[%0t] Start fork join", $time);
    fork
//    thread 1 
      #40 $display("[%0t] thread 1 is finished", $time);
      
//       thread 2
      #5   $display("[%0t] thread 2 is start", $time);
      #15  $display("[%0t] thread 2 is finished", $time);
      
//       thread 3 
      #30 $display("[%0t] thread 3 is finished", $time);
    
    join
    $display("[%0t] End fork join", $time);
  end

endmodule
