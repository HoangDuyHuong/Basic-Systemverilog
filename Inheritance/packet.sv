// Inheritance
// class Packet;
// 	int status = 1;
//   function void print();
//     $display("this's base class");
//   endfunction
// endclass

// class subpacket extends Packet;
// 	int status = 2;
//   function void print();
//     $display("this's child class");
//   endfunction
  
//   function int overral_status();
//   	overral_status = super.status + this.status;
//   endfunction
// endclass


// virtual Method 
// class Packet;
//   bit[3:0] command;
//   bit[7:0] address;
  
//   virtual task creat_pkt();
//     $display("Packet Payload");
//   endtask
  
//   task sent_pkt;
//     creat_pkt();
//   endtask
// endclass

// class sub_packet extends Packet;
//   bit[1:0] pid;
  
//   virtual task creat_pkt();
//     $display("subpacket payload");
//   endtask
// endclass


// Static properties/method
// class Packet;
//   bit[3:0] command;
//   bit[7:0] address;
//   static bit[5:0] num;
  
//   static function void print();
//     $display("Packet have num is: %0d", num);
//   endfunction
// endclass


// const keyword  
// class packet;
// 	const int max_payload_size;
  
//   function new(int size);
//   	max_payload_size = size;
//   endfunction
// endclass


// encapsulation  
// class packet;
// 	local int pid;
// 	protected string status;
//   function new();
//   endfunction
  
//   function void change(int pid, string status);
//   	this.pid    = pid;
//     this.status = status;
//   endfunction
  
//   function void show();
//     $display("pid: %0d, status: %0s", pid, status);
//   endfunction
  
// endclass


// class packet;
//   bit[7:0] address;
//   bit[3:0] command;
  
// //   local int pid;
//   protected int pid;
//   function new();  
//   endfunction
  
// endclass

// class subpacket extends packet;
//   bit[50:0] data;
//   function new();
//     super.new();
//   endfunction
  
//   function void show();
//     $display("pid = %0d", pid);
//   endfunction
  
// endclass


//  Polymorphism
class packet;
  bit[7:0] address;
  bit[3:0] command;
  
  function new();
  endfunction
  
  virtual task show();
    $display("send base packet");
  endtask
endclass

class i2c_packet extends packet;
  function new();
    super.new();
  endfunction
  
  virtual task show();
    $display("send I2C packet");
  endtask
endclass

class SPI_packet extends packet;
  function new();
    super.new();
  endfunction
  
  virtual task show();
    $display("send SPI packet");
  endtask
endclass



