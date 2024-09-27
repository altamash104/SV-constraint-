01010101010.....
class cons;
  
  rand bit a[];
  constraint x{a.size()==10;}
  constraint y{foreach(a[i])
            if(i%2==0)
              a[i]==0;
              else
                a[i]==1;}
  //another method
  constraint z1{a[0]==0;}
                
  constraint z{foreach(a[i])
    if(i>0)
    a[i]==~a[i-1];}            
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

//Another method

class cons;
  
  rand bit a[];
  constraint x{a.size()==10;}

  constraint z1{a[0]==0;}
                
  constraint z{foreach(a[i])
    if(i>0)
    a[i]==~a[i-1];}            
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
