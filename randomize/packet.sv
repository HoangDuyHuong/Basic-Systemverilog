// Randomize
//   random variables
// class packet;
//   rand bit[7:0] address;
//   rand bit[3:0] command;
//   randc bit[1:0] pkt_len;
//   int pid;
  
//   constraint word_align{address[7:5] == 3'b111;}
  
// endclass


//   Inheritance in randomize
// class packet;
//   rand bit[3:0] address;
//   rand bit[7:0] data;
  
//   constraint address_range{address < 10;}
// endclass

// class sub_packet extends packet;
//   rand bit[7:0] num;
//   constraint address_range{address > 10;}
//   constraint data_range {data > 50; num > 100;}
// endclass


//   Set membership: inside
// class packet;
//   rand bit[7:0] address;
//   rand bit[7:0] data;
//   rand bit[3:0] opcode;
  
//   constraint opcode_range{opcode inside {4'h0, 4'h5, 4'h10};}
  
//   constraint address_range{address inside {8'h00, [8'h05:8'h08], 8'hAB};}
  
//   int num[3:0] = {2,4,6,8};
//   constraint data_range{data inside {num};}
// endclass


//   Distribution in randomize: dependent on percentage
// class packet;
//   rand bit[7:0] address;
//   rand bit[7:0] data;
//   rand bit[3:0] opcode;
  
//   int a = 30;
//   constraint address_range{
//     address dist{4'h1 :=20, [4'h2:4'h6] :=20, 4'h8 :=a, 4'hf :=10};
//   }
// endclass


// inplication in random
// class packet;
//   typedef enum{
//   	SMALL,MEDIUM,LARGE
//   } mode_type;
  
//   rand bit[3:0] address;
//   rand bit[7:0] data[];
//   rand mode_type mode;
  
//   constraint data_size{data.size < 50;}
  
//   constraint max_data_size {
//   	mode == SMALL -> data.size < 5;
//     mode == MEDIUM -> {data.size >5 ; data.size < 10;}
//     mode == LARGE -> data.size >20;
//   }
  
// endclass


// disable random
class packet;
  typedef enum{
  	SMALL,MEDIUM,LARGE,UNKNOWN
  } mode_type;
  
  rand bit[3:0] address;
  rand bit[7:0] data[];
  rand bit[1:0] opcode;
  mode_type mode = UNKNOWN;
  
  constraint data_size{data.size < 10;}
  
  function string print();
    return $sformatf("mode = %0s, address = 4'h%0h, opcode = 2'b%0b, data = %p", mode, address, opcode, data);
  endfunction

  
endclass