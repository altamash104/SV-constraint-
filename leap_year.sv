class sample;
  
  rand bit [32:0] leap_year;
  
  constraint leap{
    leap_year inside {[1000:2100]};
   leap_year%4==0;
   leap_year%100==0 -> leap_year%400==0;
  }
  
  function void post_randomize();
    $display("%0p",leap_year);
  endfunction

endclass

module tb;
  sample s = new();
  
  initial
    repeat(10)
    begin
    s.randomize();
    
    //$display("%d",s.leap_year);
  end
  
endmodule
