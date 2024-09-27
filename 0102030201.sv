0102030201

class cons;
 // int g;
  rand int a[];
  constraint x{a.size()==17;}
  //g=a.size/2;
  constraint y{foreach(a[i])
    if(i%2==0)
      a[i]==0;
               else if(i<(a.size/2))
                 a[i]== (i+1)/2;
              
              else
                a[i] == a[i-2]-1;
              }
                
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
