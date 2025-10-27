// Randomize
module testbench;
// //   random variables
//   packet pkt = new();
//   initial begin
//     repeat(10) begin
//       if(pkt.randomize())
//         $display("address = 8'b%0b, command = 16'h%0h, pkt_len = %0d, ID = %0d", pkt.address, pkt.command, pkt.pkt_len, pkt.pid);
//       else 
//         $display("randomize failed!");
//     end
//   end
  
//   Inheritance in randomize
//   sub_packet sub_pkt = new();
  
//   initial begin
//     repeat(5) begin
//       if(sub_pkt.randomize())
//         $display("address = 4'b%0b, data = 8'h%0h, num = %0d", sub_pkt.address, sub_pkt.data, sub_pkt.num);
//     end
//     $finish;
//   end
  
//   Set membership: inside
//   packet pkt = new();
  
//   initial begin
//     repeat(5) begin
//       if(pkt.randomize())
//         $display("address = 8'h%0h, data = 8'h%0h, opcode = 4'h%0h", pkt.address, pkt.data, pkt.opcode);
//     end
//     $finish;
//   end
  
//   Distribution in randomize: dependent on percentage
//   packet pkt = new();
  
//   initial begin
//     repeat(10) begin
//       if(pkt.randomize())
//         $display("address = 8'h%0h", pkt.address);
//     end
//     $finish;
//   end  

// inplication in random
//   packet pkt = new();
//   initial begin
//     repeat(10) begin
//       if(pkt.randomize())
//         $display("mode = %0s, data = 8'h%0d", pkt.mode, pkt.data.size());
//     end
//     $finish;
//   end
  
// disable random 
packet pkt;
  bit status;
  
  initial begin
    pkt = new();
    pkt.rand_mode(0);
    status = pkt.randomize();
    if(status)
      $display("[OFF RANDOM] %s", pkt.print());
    else
      $display("ERROR");
  
  pkt.address.rand_mode(1);
  status = pkt.randomize();
    if(status)
      $display("[ON ADDR RANDOM:] %s", pkt.print());
    else
      $display("ERROR");
  
  status = pkt.opcode.rand_mode();
  $display("opcode is %s", status? "active random": "inactive random");
  $finish;
  end

  
endmodule