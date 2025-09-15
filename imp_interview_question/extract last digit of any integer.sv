module test;
  
  function automatic int extract_last_digit(input int n);
        return n%10;
  endfunction
        
        initial
          begin
            int a=123;
            $display("input:%0d , last_digit=%0d",a,extract_last_digit(a));
            $finish;
          end
endmodule
