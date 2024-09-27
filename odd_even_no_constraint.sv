
//constraint for odd & even number generation

class test;
  
  rand bit [4:0] a[];
  integer i;
  constraint x{a.size()==10;};
  //constraint y{foreach (a[i]) for odd numbers
    //a[i]%2==1;};
  constraint z{foreach (a[i]) //even numbers
    a[i]%2==0;};
  
  function void post_randomize();
    $display("%0p",a);
  endfunction
  
endclass
  
module my_class;
  
  test t;
  
  initial
    begin
      repeat(10)
      t=new();
      t.randomize();
     //$display("%0p",t.a);
    end
endmodule
