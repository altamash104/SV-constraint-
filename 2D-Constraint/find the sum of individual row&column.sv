class test;
  rand int a[4][4];
  int row_sum[4];
  int col_sum[4];
  
  constraint c1{foreach(a[i,j])a[i][j] inside {[1:10]};}
  
  function void post_randomize();
    foreach(row_sum[i])row_sum[i]=0;
    foreach(col_sum[j])col_sum[j]=0;
   
    foreach(a[i])begin
      foreach(a[j])begin
        $write("%2d",a[i][j]);
        row_sum[i]=row_sum[i]+a[i][j];
        col_sum[i]=col_sum[i]+a[i][j];
      end
      $display("| ROW %2d sum of row =%2d",i,row_sum[i]);
    end
    $display("========================================");
    foreach(col_sum[j])
      $display("| COL %2d sum of row =%2d",j,col_sum[j]);
      
  endfunction
endclass

module top;;
test t;
  initial
    begin
      t=new;
      t.randomize();
    end
endmodule
/*
Row sum: The sum of a row gets completed as soon as all the elements of that row are traversed.
That’s why we can immediately print the row sum at the end of each row.

Column sum: The sum of a column only gets completed after all the rows have been traversed.
that means column 0’s sum will only be final after row0, row1, row2, row3 are all processed.

that’s why column sums cannot be printed inside the row loop they’re not complete yet. 
we must print them afterwards with a separate foreach loop.

*/
