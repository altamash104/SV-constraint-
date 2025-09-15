class test;
  
  rand int num;
  
  constraint c1{ num inside {[0:4]};}
  
  function int compute();
    int fact=1;
     for(int i=1;i<=num;i++)
      begin
      fact=fact*i;
      end
    return fact;
  endfunction

endclass

module top;
  test t;
  
  initial
    begin
    t=new;
      repeat(5)begin
      t.randomize();
      $display("Given no is =%0d factorial of given number is =%0d",t.num,t.compute());
      end
    end
endmodule
