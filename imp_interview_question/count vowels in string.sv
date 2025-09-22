module test;
  string s ="ALTAMASH SHAHID";
  int count=0;
  
  initial
    begin
      for(int i=0;i<s.len();i++)
        begin
          if(s[i]=="A"||s[i]=="E"||s[i]=="I"||s[i]=="O"||s[i]=="U"||
             s[i]=="a"||s[i]=="e"||s[i]=="i"||s[i]=="o"||s[i]=="u")
             begin
               count++;
        end
    end
             $display("string =%s",s);
      $display("No  of vowels =%0d",count);
    end
endmodule
