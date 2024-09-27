
//constraint for odd number

class test;
  
  rand bit [4:0] a[];
  integer i;
  constraint x{a.size()==10;};
  constraint y{foreach (a[i])
    a[i]%2==1;};
  
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
    end
endmodule

//constraint for even number
class test;
  
  rand bit [4:0] a[];
  integer i;
  constraint x{a.size()==10;};
  constraint z{foreach (a[i]) 
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
