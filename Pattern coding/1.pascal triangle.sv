module test;
  int a[10][10];
  int n=0;
  
  initial
    begin
      int n=5;
      for(int i=0; i<n;i++)begin
        for(int j=0; j<=i;j++)begin
          if(j==0 || i==j)
            a[i][j]=1;
          else
            a[i][j]=a[i-1][j-1]+a[i-1][j];//Formula a[i][j] = a[i-1][j-1] + a[i-1][j]  current element = upper-left + upper-right
          $write("%0d",a[i][j]);
        end
        $display("");
      end
    end
endmodule
/*
1
11
121
1331
14641
*/
  
