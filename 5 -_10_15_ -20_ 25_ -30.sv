//generate 5 -10 15 -20 25 -30 

class cons;
  
  rand int a[];
  constraint x{a.size()==10;}
  constraint y{foreach(a[i])
    if(i%2==0)
      a[i]==5*i+5;
    else
      a[i]==-5*(i+1);}
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
