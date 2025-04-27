class test;
  rand bit[31:0]a;
  constraint c1{$countones(a)%2!=0;}
  constraint c2{a<100;}
  
endclass

module top;
  test t;
  initial
    begin
      repeat(10)begin
      t=new;
      t.randomize();
      $display("t.a=%0d(%0b)",t.a,t.a);
    end
  end
endmodule
