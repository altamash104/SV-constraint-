//generate 0,1,x,z values 0,1 is 30% and x,z is 70% percentage and display the percentage off 0,1,x,z.

class test;
 rand bit [1:0]a;
  logic b;
  
   constraint c{a dist{2'b00:=30,2'b01:=30,2'b10:=70,2'b11:=70};}
 // constraint c{a dist{2'b00:/30,2'b01:/30,2'b10:/70,2'b11:/70};}
  
  function void post_randomize();
    case(a)
  
      2'b00: b=0;
      2'b01: b=1;
      2'b10: b=1'bx;
      2'b11: b=1'bz;
 
    endcase
  endfunction
  
endclass

module top;
  test t;
  int count0,count1,countx,countz;
  int total=1000;
  initial
    begin
      repeat(total)begin
      t=new;
      t.randomize();
        case(t.b)
        1'b0: count0++;
        1'b1: count1++;
        1'bx: countx++;
        1'bz: countz++;
       
        endcase
      end
      $display("Total sample taken=%0d",total);
      $display("0=%0d,(%0.2f%%)",count0,100.0*count0/total);
      $display("1=%0d,(%0.2f%%)",count1,100.0*count1/total);
      $display("x=%0d,(%0.2f%%)",countx,100.0*countx/total);
      $display("z=%0d,(%0.2f%%)",countz,100.0*countz/total);
    end
endmodule
