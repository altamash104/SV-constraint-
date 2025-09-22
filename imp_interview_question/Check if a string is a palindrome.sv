
module test;
  string s;
  
  function bit check_palindrome(input string str);
    int left=0;
    int right=str.len()-1;
    
    while(right>left)begin
      if(str[left]!=str[right])
        return 0;
      left++;
      right--;
    end
    return 1;
  endfunction
  
  initial
    begin
      s="madam";
      if(check_palindrome(s))
        $display("%s is a palindrome",s);
      else
        $display("%s is not palindrome",s);
      
      s="altamash";
      if(check_palindrome(s))
        $display("%s is a palindrome",s);
      else
        $display("%s is not palindrome",s);
    end
endmodule

//shorcut method
module test;
  string s="MADAM";
  string rev;
  
  initial
    begin
      rev={<<8{s}};//this streaming operator reverse the string
      if(s==rev)
        $display("String is palindrome=%s",s);
      else
        $display("String is palindrome=%s",s);
    end
endmodule
