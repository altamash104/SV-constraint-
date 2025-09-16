
class fibonacci;
  
  rand int a[];
  
  constraint c1{a.size()==10;}
  constraint c2{foreach (a[i])
    if(i==0)
      a[i]==0;
    else if(i==1)
      a[i]==1;
    else
      a[i]==a[i-1]+a[i-2];}
  
 function void post_randomize();
    $display("%0p",a);
    
  endfunction
endclass

module test;
  fibonacci h;
  initial
    begin
      h=new();
     
        begin
          h.randomize();
          $display("%p",h.a);
        end
    end
endmodule

//Another method without randomization(more accurate)
class fibonacci;
  int a[];

  function new(int n);
    a = new[n];
    a[0] = 0;
    a[1] = 1;
    for (int i = 2; i < n; i++)
      a[i] = a[i-1] + a[i-2];
  endfunction
  // function void build(int n);
  //   a = new[n];
  //   a[0] = 0;
  //   a[1] = 1;
  //   for (int i = 2; i < n; i++)
  //     a[i] = a[i-1] + a[i-2];
  // endfunction
  /*
  if we do not want to use in built constructor then we have to use our own function(build).
  note- when we want print a series then we have to use function who do not return single number .that is why we use void function.
  */

  function void display();
    $display("%0p", a);
  endfunction
endclass

module test;
  fibonacci t;
  initial begin
    t = new(10);
    // h.build(10);
    t.display();
  end
endmodule 
