module test;
  initial
    begin
      int n=4;
      for(int i=1;i<=n;i++)begin
        
        for(int j=1;j<=n-i;j++)begin
          $write(" ");
        end
        
        for(int k=1;k<=i;k++)begin
          $write("*");
        end
        $display("");
      end
    end
endmodule
/*
   *
  **
 ***
****
*/
