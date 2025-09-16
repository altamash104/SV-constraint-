module test;
  int a[];
  int n;

  initial begin
    n = 10;               
    a = new[n]; 
    
    a[0] = 0;
    a[1] = 1;

    for (int i = 2; i < n; i++) 
      begin
        a[i] = a[i-1] + a[i-2];
      end
    $display("Fibonacci series (%0d terms): %p", n, a);
  end
endmodule
////////////////////////////////////////////////////////////////////
//without using dynamic array in module
module test;
  int a;

  // function to print fibonacci series
  function void check_fibonacci(input int n);
    int fib0, fib1, fib_next;
    fib0 = 0;
    fib1 = 1;
    
    $write("%0d %0d ", fib0, fib1);  // print first two numbers

    for (int i = 2; i < n; i++) begin
      fib_next = fib0 + fib1;
      $write("%0d ", fib_next);
      fib0 = fib1;
      fib1 = fib_next;
    end
    $display(""); // new line
  endfunction

  initial begin
    a = 10;
    $display("Fibonacci series up to %0d terms:", a);
    check_fibonacci(a);
  end
endmodule

