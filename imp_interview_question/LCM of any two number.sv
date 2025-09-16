module test;
  int num1,num2;
  int lcm,max;
  
  initial
    begin
      num1=15;
      num2=25;
  max=(num1>num2)?num1:num2;
  lcm=max;
  
      while((lcm % num1 !=0) || (lcm %num2 !=0))//check until it gets divided by both num1 and num2
    begin
    lcm=lcm+max;//if max is not lcm then try for next multiple of max 
    end
  $display("Numbers :%0d and %0d",num1,num2);
  $display("LCM of two number num1 & num 2=%0d",lcm);
    end
endmodule
//////////////////////////////////////////////////////////////
//using customize function
module test;
  int num1,num2;
  int lcm,max;
  
  function int find_lcm(int num1,int num2);
    begin
      max=(num1>num2)?num1:num2;
      lcm=max;
    
    while((lcm%num1!=0) || (lcm%num2 !=0))
      begin
        lcm=lcm+max;
      end
      return lcm;
    end
  endfunction
  
  initial
    begin
      num1=15;
      num2=25;
      
      lcm=find_lcm(num1,num2);
      $display("Numbers: %0d and %0d", num1, num2);
      $display("lcm of num1&num2 = %0d",lcm);
      
    end
endmodule
