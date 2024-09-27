//1234554321
class cons;
  
  rand int a[];
  constraint x{a.size()==10;}
  constraint y{foreach(a[i])
    if(i<5)
    a[i]==i+1;
    else
      a[i]==10-i;}
                
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
