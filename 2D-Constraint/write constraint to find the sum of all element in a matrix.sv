class test;
  rand int a[4][4];
  int sum;
  
  constraint c1 {foreach(a[i,j]) a[i][j] inside {[1:10]};}
  
  function void post_randomize();
    sum=0;
    foreach(a[i])
      begin
        foreach(a[j])
          begin
            $write("%0d",a[i][j]);
          end
        $display("");
      end
     
    foreach(a[i,j])
      sum=sum+a[i][j];
    $display("sum=%0d",sum);
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
