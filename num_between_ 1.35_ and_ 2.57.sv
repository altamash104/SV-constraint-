//write a code to generate random number between 1.35 and 2.57

class cons;
  rand int a;
  real b;
  constraint size{a inside {[1350:2570]};}
 
  
  function void post_randomize();
    b=a/1000.0;
    $display("%0f",b);
  endfunction
endclass

module test;
   cons h;
  
  initial begin
    h=new();
    repeat(10)
    h.randomize();
  end
endmodule*/
