// class
// class Package;
  
//   bit[7:0] addr;
//   bit[7:0] data;
//   bit write;
  
//   function new();
//   	addr  = 8'h01;
//     data  = 8'h02;
//     write = 1'b0;
//   endfunction
  
//   function clean();
//   	addr  = 8'h00;
//     data  = 8'h00;
//     write = 1'b0;
//   endfunction
  
//   function display();
//     $display("[%0t] addr = %0h, data = %0h, write = %0b", $time, addr, data, write);
//   endfunction

// endclass

// Shallow coppy object
// class Package;
//   bit[7:0] address;
//   bit[4:0] command;
  
//   function new(input bit[7:0] addr);
//   	command = 4'h01;
//     address = addr;
//   endfunction
  
// endclass

// Example class with mailbox, package  

class Packet;
	int pid;
  function new(int i);
  	pid = i;
  endfunction
endclass

class source;
  
  mailbox #(Packet) o_chan;
  Packet pkt;
  int num;
  
  function new(mailbox #(Packet) o_chan, int num = 3);
    this.o_chan = o_chan;
  	this.num = num;
  endfunction
  
  task run();
    for(int i=0; i<=num; i++) begin
      pkt = new(i);
      o_chan.put(pkt);
      $display("[source] sent packet with pid: %0d", pkt.pid);
      #5;
    end
  endtask
  
endclass

  class sink;
    mailbox #(Packet) i_chan;
    Packet pkt;
    
    function new(mailbox #(Packet) i_chan);
      this.i_chan = i_chan;
    endfunction
      
    task run();
      while(1) begin
        i_chan.get(pkt);
        $display("[sink] get packet with pid: %0d", pkt.pid);
        #5;
      end
      
    endtask
    
  endclass












