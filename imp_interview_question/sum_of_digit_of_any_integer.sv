
module reverse_unsigned_tb;

  function automatic int  sum_num(int n);
    int sum=0;
    int digit;
    begin
     
      while (n != 0) 
        begin
           digit = n % 10;        //extract last digit
           sum= sum + digit; 
           n = n / 10;            //remove last digit
        end
      return sum;
    end
  endfunction

  initial 
    begin
    int  a;

    	a = 123;
      $display("Input value: %0d  , sum of integer: %0d", a, sum_num(a));

	    a = 4321;
      $display("Input value: %0d  , sum of integer: %0d", a, sum_num(a));

	$finish;
  end

endmodule
