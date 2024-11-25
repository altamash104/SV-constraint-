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
class ab;
  rand longint b[$];
  rand longint a[];
  
  constraint c1{a.size==9;}
  constraint c2{foreach(a[i])
    a[i]==i+1;}
  
  function void post_randomize();
    foreach (a[i])
      repeat(i+1)
        b.push_back(a[i]);
        //$display("%0p",b);
    
    foreach(b[i])
      $write("%0d",b[i]); // if we use $display in queue it will print vertically
  endfunction
endclass

module test;
  ab a;
  initial
    begin
      a=new();
      a.randomize();
    end
endmodule

