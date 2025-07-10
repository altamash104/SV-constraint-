class test;
  rand bit[7:0]a[4][4];
  integer i;
  
  constraint c2{foreach(a[i]){
    foreach (a[j]) a[i][j] inside {[1:50]};}}
  
  constraint c1{foreach(a[i]){
    				foreach(a[j])
                      unique{a};}
               }
    //constraint c1{unique{a};}
  function void post_randomize();
    foreach(a[i])
      begin
      foreach(a[j])
        begin
          $write(a[i][j]);
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
