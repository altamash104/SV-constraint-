//generate 9 19 29 39 49 59 69 79
  
class cons;
  
  rand int a[];
  constraint x{a.size()==10;}
  constraint y{foreach(a[i])
    a[i]==(i*10)+9;}
    function void post_randomize();
    $display("Randomize data is %0p",a);
  endfunction
endclass

module top;
  cons c_h;
  
  initial
    begin
      c_h=new();
      assert(c_h.randomize());
    end
endmodule
