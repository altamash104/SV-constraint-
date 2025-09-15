class factorial;
  
  function int compute(input int n);
    int fact=1;
    for(int i=1;i<=n;i++)
      begin
      fact=fact*i;
      end
    return fact;
  endfunction
endclass

module top;
  factorial t;
  
  initial
    begin
    t=new;
      t.randomize();
      $display("Given no is =%0d factorial of given number is =%0d",5,t.compute(5));
    end
endmodule

//module base coding
/*
module test;

  function automatic int factorial(input int n);
    int fact = 1;
    int i;
 
      for (i = 1; i <= n; i++) 
        begin
        fact = fact * i;
        end
      return fact;
  endfunction

  initial begin
    int a;

	    a = 7;
    $display("Factorial of %0d = %0d", a, factorial(a));

    $finish;
  end

endmodule
*/
