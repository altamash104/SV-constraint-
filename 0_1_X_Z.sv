//print value random values 0,1,x,z
class  test;
   logic[3:0]a;
  randc bit [1:0]flag;
  
  function void post_randomize();
    if(flag==0)
      a=0;
    else if(flag==1)
      a=1;
    else if (flag==2)
      a='x;
    else
      a='z;
  endfunction
  
endclass

module top;
  test t;
  
  initial
    begin
      t=new;
      repeat(8)
        begin
      t.randomize();
           $display("%0d",t.a);
        end
          
     
    end
endmodule
