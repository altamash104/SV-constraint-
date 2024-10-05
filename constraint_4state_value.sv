class test;
  rand bit[1:0]var;
  logic a;
  function void post_randomize();
    if(var==0)
      a=0;
    else if(var==1)
      a==1;
    else if(var==2)
      a='x;
    else
      a='z;
  endfunction
endclass

module top;
  test t;
  initial
    begin
      t=new();
      repeat(10)
        begin
          t.randomize();
          $display("%0d",t.a);
        end
    end
endmodule
  
    
