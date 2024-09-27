
//write constraint to generate random values 25,27,30,36,40,45 with out using 
//""set membership"

class cons;
  
  rand int a;
  constraint x{a>25;a<46;}
  constraint y{(a%5==0)||(a%9==0);a!=35;}
  
  function void post_randomize();
    $display("%0p",a);
  endfunction
endclass

module test;
  cons h;
  initial begin
    h=new();
    repeat(20)
      h.randomize();
  end
endmodule
