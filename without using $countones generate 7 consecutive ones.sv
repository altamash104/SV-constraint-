//without using $countones generate 7 consecutive ones.
class test;
  rand bit [31:0] a;
  rand int  pos;

  // position of start pos can only be [0:25] so that pos+6 doesn't overflow
  constraint c1 {pos inside {[0:25]};}
  constraint c2{a==((32'h7F)<<pos);}//32'h7F means 0111_1111;bcz $countones we can not use


endclass


module top;
  test t;
  initial begin
    t = new;
    repeat(5) begin
      t.randomize();
      $display("a=%032b", t.a);
    end
  end
endmodule
