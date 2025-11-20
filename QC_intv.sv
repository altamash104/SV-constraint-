class test;
  rand int a[4];
  rand int b[4];
  
  constraint c1{foreach(a[i]) a[i] inside{[1:10]};}
  
  constraint c2{foreach(b[j]) b[j]inside {[1:10]};}
  
  constraint c3{unique{a};unique{b};}
 
  constraint c4{foreach(a[i])foreach(b[j])a[i]!=b[j];}
  
  function void post_randomize();
     $display("a=%0p",a);
     $display("b=%0p",b);
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
