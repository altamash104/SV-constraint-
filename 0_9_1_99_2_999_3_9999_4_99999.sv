class test;
  
  rand int a[];
  constraint x{a.size()==10;}
  constraint y{foreach(a[i])
    if(i%2==0)
      a[i]==(i+1)/2;
               else if(i==1)
                 a[i]==9;
               else
                 a[i]==a[i-2]*10+9;}
    
         
  function void post_randomize();
    $display("value of a:%0p",a);
  endfunction
endclass

module top;
  test t;
  
  initial
    begin
      t=new();
      assert(t.randomize());
    end
endmodule
