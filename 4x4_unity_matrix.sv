class test;
  rand int a[4][4];
  function void post_randomize;
    for(int i=0;i<4;i++)
      begin
        for(int j=0;j<4;j++)
          begin
            $write(a[i][j]);
          end
        $display();
      end
  endfunction
  
  constraint c{
    foreach(a[i]){
      foreach(a[j]){
        if(i==j){
          a[i][j]==1;
        }
          else if(i!=j)
        {
          a[i][j]==0;
        }
      }
      }
   }
  
endclass

module top;
  test t;
  initial
    begin
      t=new;
      t.randomize;
    end
endmodule
