class test;
  rand bit[7:0] a;
  int count_ones;

  function void post_randomize();
    count_ones =0;
    foreach(a[i])
      if(a[i]==1)
        count_ones++;
  endfunction
  

endclass
 
module top;
  
  test t;
  initial 
    begin
      t=new();
      repeat(5)
        begin
        t.randomize();
          $display("a=%0b count_ones=%0d",t.a,$countones(t.a));
          
        end
      
     end
endmodule
