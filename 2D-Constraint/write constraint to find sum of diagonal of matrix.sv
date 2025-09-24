class test;
  rand int a[4][4];
  int sum_left,sum_right;
  
  constraint c1{foreach(a[i,j])a[i][j] inside {[1:10]};}
  
  function void post_randomize();
   sum_left=0;
    sum_right=0;
    
    foreach(a[i])begin
      foreach(a[j])begin
        $write("%4d",a[i][j]);      
      end
      $display("");
    end
    
    foreach(a[i,j])begin
      if(i==j)
  	   sum_left=sum_left+a[i][j];
     if(i+j==4-1)//4 is size of matrix
  	   sum_right=sum_right+a[i][j];
    end
    $display("left diagonal sum=%0d",sum_left);   
    $display("Right diagonal sum=%0d",sum_right);
    
  endfunction

endclass

module top;;
test t;
  initial
    begin
      t=new;
      t.randomize();
    end
endmodule
