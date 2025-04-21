
class test;
  
  rand int a[4][4];
  
  function void post_randomize();
    foreach(a[i])
      begin
        foreach(a[j])
        begin
          $write(a[i][j]);
        end
        $display();
      end
  endfunction
  
  constraint c{foreach(a[i]){
    foreach(a[j]){
      if(i>j || i==j){
        a[i][j]==1;}
            else{
              a[i][j]==0;}
            }
            }
        }
endclass

module top;
  
  test t_h;
  
  initial
    begin
      t_h=new;
      t_h.randomize();
    end
endmodule
