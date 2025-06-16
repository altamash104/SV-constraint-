
class test;

  rand bit [7:0] a [8];
  constraint c {
    foreach (a[i]) 
      a[i] == (1 << i);
  }

 
 function void post_randomize();
    foreach (a[i])
      $display("a[%0d]=%0d",i,a[i]);
  endfunction
  
  
endclass

module top;
      test t;
      initial
        begin
          t=new;
          t.randomize();
          //$display("a[%0d]=%0d",t.a);
        end
endmodule
