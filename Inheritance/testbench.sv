// Inheritance 
 module testbench;
//    Packet     pkt;
//  	subpacket sub_pkt;
//    initial begin
//      sub_pkt = new();
//      pkt     = new();
//      $display("status is: %0d", pkt.status);
//      pkt.print();
//      #1;
//      $display("status is: %0d", sub_pkt.status);
//      sub_pkt.print();
     
//      $display("overral status is: %0d", sub_pkt.overral_status);
//      $finish;
//    end
   
  
// virtual Method   
//    sub_packet sub_pkt;
//    initial begin
//      sub_pkt = new();
//      sub_pkt.sent_pkt();
//      $finish;
//    end
   
   
// Static properties/method
//    No need to call new() function
//    Packet s_pkt1;
//    Packet s_pkt2;
   
//    initial begin
//      s_pkt1.num = 5;
//      s_pkt1.print();
//      s_pkt2.num = 10;
//      s_pkt2.print();
//      $finish;
//    end
   
// const keyword   
// packet pkt;
//    initial begin
//      pkt = new(10);
//      $display("max payload is: %0d", pkt.max_payload_size);
//      $finish;
//    end
   
// encapsulation   
// packet pkt;   
//    initial begin
//      pkt = new();
//      pkt.change(10,"good");
//      pkt.show();
     
// //   ERROR situation 
//      pkt.pid = 1;
//      pkt.status = "sent";
//      $display("pid = %0d, status: $0s", pkt.pid, pkt.status);
//      $finish;
//    end
	   
//    subpacket sub_pkt;
   
//    initial begin
//      sub_pkt = new();
//      sub_pkt.show();
//      $finish;
//    end
   
//  Polymorphism  
   packet base_pkt = new();
   i2c_packet i2c_pkt = new();
   SPI_packet spi_pkt = new();
   
   initial begin
   	base_pkt = i2c_pkt;
     base_pkt.show();
     
     base_pkt = spi_pkt;
     base_pkt.show();
     
   end
   
 endmodule

