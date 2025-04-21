//1 22 333 4444 55555
//hard coded
class test;
  rand int a[];
  
  constraint y{a.size()==15;}
  constraint x{foreach(a[i])
    if(i==0)
      a[i]==1;
               else if(i>=1 && i<3)
                 a[i]==2;
               else if (i>2 && i<6)
                 a[i]==3;
               else if (i>5 && i<10)
                 a[i]==4;
               else if (i>9 && i<15)
                 a[i]==5;
              }            
  
  function void post_randomize();
    $display("a=%0p",a);
  endfunction
  
endclass

module top;
  
  test t;
  
  initial begin
    t= new();
    t.randomize();
  end
endmodule

//////////////////////////////////////////////////////////////////////
//soft coded
class test;
  
  rand int a[];
  int i;
  
  constraint x{a.size==5;}
  constraint y{foreach (a[i])
    a[i]==i+1;}
  
  function void post_randomize();
    foreach(a[i])
      repeat(a[i])
        //$display("%0d",a[i]);
    $write("%0d",a[i]);
  endfunction
  
endclass

module top;
  test t;
  
  initial
    begin
    t=new;
    t.randomize();
    end
endmodule

