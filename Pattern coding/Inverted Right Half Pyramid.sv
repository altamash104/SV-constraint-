module test;
  initial
    begin
      int n=5;
      for(int i=1;i<=n;i++)begin
        for(int j=1;j<=n-i+1;j++)begin
          $write("*");
        end
        $display();
      end
    end
endmodule

/*

***** 
**** 
*** 
** 
*

*/
