5 55 555 5555 55555 555555 5555555 55555555 555555555 5555555555

class xyz;
  int b=5;
  rand longint a[];
  constraint x{a.size==10;}
  constraint c1{foreach(a[i])
    if(i==0)
      a[i]==5;
    else
      a[i]==a[i-1]*10+5;}
                   
  
  function void post_randomize();
    $display("%0p",a);
    
  endfunction
endclass
  module test;
    xyz h;
    initial begin
      //repeat(20)begin
      h= new();
      
        assert(h.randomize());
       // $display("%p",h);
       // end
       end
  endmodule
