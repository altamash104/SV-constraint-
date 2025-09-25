////////////////////////////////////////////////
module test;
 
 initial
    begin
     int n=6;
  for(int i=1;i<=n;i++)begin
    for(int j=1;j<=i;j++)begin
      $write("*");
    end
    $display("");
  end
  end
endmodule

/////////////////////////////////////////////

class test;
  rand int n;
  
  constraint c1{n inside {[1:10]};}
  function void post_randomize();
    for(int i=1;i<=n;i++)begin
      for(int j=1;j<=i;j++)begin
        $write("*");
      end
      $display("");
    end
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
  
///////////////////////////////////////////////
//with out randomization class based 
class test;
  int n=6;
  
  function void star_print();
    for(int i=1;i<=n;i++)begin
      for(int j=1;j<=i;j++)begin
        $write("*");
      end
      $display();
    end
  endfunction
          
endclass

module top;
  test t;
  initial
    begin
      t=new;
      t.star_print();
      
    end
endmodule

/*

* 
** 
*** 
**** 
***** 
******

*/


          
