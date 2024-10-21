class test;
  rand bit [31:0]a;
  
  constraint x{$countones(a)==1;}
endclass

module top;
  
  test t;
  
  initial
    begin
      t =new();
      t.randomize();
      $display("a=%0b",t.a);
    end
endmodule
