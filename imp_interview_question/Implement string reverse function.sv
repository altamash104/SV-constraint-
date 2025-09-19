module test; 
	string s1 = "altamash"; 
	string s2; 

  function string reverse(input string s1);
    s2={<<8{s1}};//use of streaming operator
    return s2;
  endfunction
  
  initial
    begin
      s2=reverse(s1);
      $display("Original string = %s", s1);
      $display("Reversed string = %s", s2);
    end
endmodule
