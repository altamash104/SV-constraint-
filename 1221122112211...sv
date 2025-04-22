class test;
  rand bit [4:0] a[20];
  constraint c{foreach(a[i])
    if(i%4==0 || i%4==3)
      a[i]==1;
     else
       a[i]==2;}

endclass
  
module top;
  
  test t;
  
  initial
    begin
      t=new;
      t.randomize();
      $display("pattern=%p",t.a);
      
    end
endmodule
