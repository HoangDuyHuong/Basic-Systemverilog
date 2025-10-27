module testbench;
  // assert syntax: assert(expression) begin
                //   	Ex if condition is true 
                //   end else begin
                //   		Ex if condition is false 
                //   end

//   packet pkt = new();
//   initial begin
//     assert(pkt.randomize());
//     $finish;
//   end
  
//   Covergroup
  bit[3:0] data;
  bit valid;
  
  covergroup cover_gr @(posedge valid);
    coverpoint data{
      bins low = {0,1,2};
      bins mid = {3,4,5};
      bins hight = {6,7,8,9};
    }
  endgroup
  
  cover_gr my_gr = new();
  
  initial begin
    repeat(10) begin
      data = $urandom_range(0, 15);
      $display("data random is %0d", data);
      valid = 1;
      #10; valid = 0; #10;
      
  end
    $display("Simulation finished");
    $finish;
  end
endmodule





