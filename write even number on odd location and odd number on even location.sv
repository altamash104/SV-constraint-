//write even number on odd location and odd number on even location

class test;
  rand int a[8];
  
    constraint c1{foreach(a[i]) 
                        if(i%2==0)
                          a[i]%2!=0;
                       else
                         a[i]%2==0;}
  
  constraint c2{foreach(a[i]) a[i] inside {[1:10]};}

  function void post_randomize();
    foreach(a[i])
      $display("a[%0p]=%0p",i,a[i]);
  endfunction
endclass

module top;
  test t;
  
  initial
    begin
      t=new;
      t.randomize;
    end
endmodule
