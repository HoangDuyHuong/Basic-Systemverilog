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
  
//   initial begin
//     $display("[%0t] Start fork join", $time);
//     fork
// //    thread 1 
//       #40 $display("[%0t] thread 1 is finished", $time);
      
// //       thread 2
//       #5   $display("[%0t] thread 2 is start", $time);
//       #15  $display("[%0t] thread 2 is finished", $time);
      
// //       thread 3 
//       #30 $display("[%0t] thread 3 is finished", $time);
    
//     join
//     $display("[%0t] End fork join", $time);
//   end

// disable fork
//   initial begin
//   	fork : process
//     	begin
//           for(int i = 0; i<70; i++) begin
//             #10; $display("[%0t] loop 1 is running", $time);
//           end
//         end
//       begin
//         #50; $display("[%0t] thread 2 is start", $time);
//       end
//     join_any
//     disable process;
//     #1000; $display("[%0t] End simulation", $time);
//     $finish;
//   end
//   Semaphore

//   semaphore key = new(1);
  
//   task process_1();
//     for(int i=0; i<=3; i++) begin
//       key.put(1);
//       #10; $display("[%0t] key put", $time);
//       key.get(1);
//       $display("[%0t] key get", $time);
//     end
//   endtask
  
//   initial begin
//     fork
//     process_1();
//     join
//     $finish;
//   end
  
// syntax mailbox: mailbox[<type>] <mailbox_name> = new([bound])
//   mailbox mb = new();
  
//   task sent();
//     for(int i=0; i<5; i++) begin
//       mb.put(i);
//       $display("[%0t] MB sent data: %0d", $time, i);
//       #10;
//     end 
//   endtask
  
//   task get();
//     int data;
//     while(1) begin
//       mb.get(data);
//       $display("[%0t] MB get data: %0d", $time, data);
//     end
//   endtask
  
//   initial begin
//   	fork
//       sent();
//       get();
//     join_any
//     disable fork;
//       $finish;
//   end
  
// function
//   int my_arr[] = new[5];
  
//   function void array(int arr[]);
//     for(int i=0; i<my_arr.size(); i++) begin
//       my_arr[i] = i*2;
//     end
//   endfunction
  
//   initial begin
//     array(my_arr);
//     for(int i=0; i<my_arr.size(); i++) begin
//       $display("[%0t] value of array[%0d] is: %0d", $time, i, my_arr[i]);
//     end
//     $finish;
//   end
  
// syntax package: <pavkage_name>; <contain types, var, task, function,...> endpackage
  
import math_pkg::*;
  initial begin
  	int sum;
    int sub;
    
    sum = plus(5, 9);
    sub = minus(9, 5);
    
    $display("result sum of two num; %0d", sum);
    $display("result sub of two num; %0d", sub);
    
  end
  
endmodule
