
class test;
  rand int a;
  
  constraint c1{a%2!=0 & a%5==0 & a inside {[0:100]};}
 
  function void post_randomize();
    $display("%0d",a);
  endfunction
  
endclass

module top;
  
  test t;
  
  initial
    begin
      repeat(10)
        begin
      t=new;
      t.randomize();
    end
    end
endmodule
