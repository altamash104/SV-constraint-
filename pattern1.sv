/*
1
22
333
4444
55555
*/

class test;
  rand int a[];
  
  constraint y{a.size==5;}
  constraint x{foreach (a[i]) a[i]==i+1;}
  
  function void post_randomize();
    foreach(a[i])
      begin
   		repeat(i+1)
          begin
           $write("%0d",a[i]);
          end
        $display("");
      end

  endfunction
  
endclass

module top();
  
  test t;
  
  initial 
    begin
      t=new;
      t.randomize();
    end
  
endmodule
