class test;
  rand bit [31:0]a[40];
  
  constraint c{foreach (a[i]) a[i]==i/4+1;}
  
  function void post_randomize();
    foreach(a[i])
      $write("%0d",a[i]);
  endfunction
  
endclass

  module top;
      test t;
      initial
        begin
        
          t=new;
          t.randomize();
        end
  endmodule
