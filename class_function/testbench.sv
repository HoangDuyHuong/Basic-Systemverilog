
module tesbench;

// class
//   Package pkg;
  
//   initial begin
//     pkg = new();
//     pkg.display();
//     #5;
//     pkg.addr = 8'h03;
//     pkg.data = 8'h04;
//     pkg.write    = 1'b1;
//     pkg.display();
//     $finish;
//   end
  
// Shallow coppy object
//   Package pkg_1, pkg_2;
//   initial begin
//     pkg_1 = new(8'hab);
//     $display("[%0t] address = %0h, command = %0h", $time, pkg_1.address, pkg_1.command);
//     #5;
//     pkg_2 = new pkg_1;
//     $display("[%0t] address = %0h, command = %0h", $time, pkg_2.address, pkg_2.command);
//     $finish;
//   end
  
// Example class with mailbox, package  

  mailbox #(Packet) pkt;
  
  source src;
  sink snk;
  
  initial begin
    pkt = new();
    src = new(pkt, 5);
    snk = new(pkt);
  end
  
  initial begin
    fork
    src.run();
    snk.run();
    join_any
  end
  
// syntax interface: interface<interface_name>;  
//   						  <interface_name>;	
//   						  ...
//   						  endinterface		

//   class and virtual interface: virtual interface_type<interface_name>
  
  
endmodule

















