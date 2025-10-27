assert
class packet;
  rand bit[7:0] address;
  rand bit[15:0] data;
  rand bit[1:0] pkt_len;
  int pid;
  
  constraint address_align{address[1:0] == 2'b00;}
  constraint addr_con{address < 3; address > 0;}
endclass




