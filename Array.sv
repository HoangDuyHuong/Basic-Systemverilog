// array
module testbench;
//   Dynamic array
//   bit[3:0] d_array[];  // dynamic array with 4bit vectors
//   int data[];		   //dynamic arraya with int data
//   int new_array[];
//   initial begin
//     d_array = new[100];
//     data     = new[200];
//     $display("size of d_array is: %0d", d_array.size());
  
//     new_array = new[5];
//     $display("size of old array is: %0d", new_array.size());
//     new_array.delete();
//     $display("size of new array is: %0d", new_array.size());    
//   end

// Associative array
//   bit[7:0] mssv[string];
  
//   initial begin
//   string name = "Huong";
    
//     mssv[name]  = 111;
//     mssv["tai"] = 222;
    
//     $display("%s have mssv is: %d ", name, mssv[name]);
//     $display("%s have mssv is: %d ", "tai", mssv["tai"]);
//     $display("mssv available is: %d ", mssv.num());
  
//   end
  
  
//   Queues
//   int first_queue[$];
//   int front_e;
  
//   initial begin
//     first_queue.push_back(11);
//     first_queue.push_back(22);
//     first_queue.push_back(33);
//     first_queue.push_back(44);
    
//     $display("First element of queue is: %0d", first_queue[0]);
//     $display("second element of queue is: %0d", first_queue[1]);
    
//     front_e = first_queue.pop_front();
//     $display("element is removed: %0d", front_e);
  	
//     $display("Queue size is: %0d", first_queue.size());
//   end
  
//   Array mainpulation method reverse,sort,rsort,shuffle
  int d_arr[];
  initial begin
    d_arr = new[5];
    d_arr = {1,5,4,3,2};
    
    d_arr.sort();
    $display("Dynamic array after sort is: %p", d_arr);
    d_arr.rsort();
    $display("Dynamic array after rsort is: %p", d_arr);
    d_arr.reverse();
    $display("Dynamic array after reverse is: %p", d_arr);
    d_arr.shuffle();
    $display("Dynamic array after shuffle is: %p", d_arr);
    
    $display("element min is: %p", d_arr.min());
    $display("element max is: %p", d_arr.max());
  
  end
  
  
endmodule