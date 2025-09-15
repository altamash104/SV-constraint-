
module test;

  function automatic int  reverse_num(int n);
    int rev=0;
    int digit;
    begin
     
      while (n != 0) 
        begin
           digit = n % 10;        //last digit
           rev= rev * 10 + digit; //build reverse(new_number = old_number * 10 + new_digit)
           n = n / 10;            //remove last digit
        end
      return rev;
    end
  endfunction

  initial 
    begin
    int  a;

    	a = 123;
      $display("Input value: %0d  , Reverse value: %0d", a, reverse_num(a));

	    a = 4321;
      $display("Input value: %0d  , Reverse value: %0d", a, reverse_num(a));

	$finish;
  end
endmodule
/*
Note-Reason to use automatic function here because in system verilog module every local variable is static by nature,if we use rev=0 in declaration, it refresh only once not in every call
use of automatic ensures each call gets its own fresh storage initialization happens per/call.
*/
