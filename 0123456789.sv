class cons;
  
  rand int a[];
  constraint x{a.size()==10;}
  constraint y{foreach(a[i])
    //if(i<10)
    a[i]==i;}
     //else
      // a[i]==i+1;}
    
                
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
