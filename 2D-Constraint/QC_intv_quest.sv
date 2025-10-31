//this question was asked in qualcomm interview question

class test;
  rand int a[6][6];
  
  constraint c1{foreach(a[i]){foreach(a[j])
    if(i==j)
      a[i][j]==2;
  else if(i+j==5)
      a[i][j]==(1<<(i+1));
    else
      a[i][j]==0;
                             }}
  
  function void post_randomize();
    foreach(a[i])begin
      foreach(a[j])begin
        $write(a[i][j]);
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
      t.randomize;
    end
endmodule
/*
simulation output
          2          0          0          0          0          2 
          0          2          0          0          4          0 
          0          0          2          8          0          0 
          0          0         16          2          0          0 
          0         32          0          0          2          0 
         64          0          0          0          0          2
*/
