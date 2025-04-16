class test;
  
  rand bit [3:0]a[];
  
  constraint c1{a.size()==10;}
  constraint c2{foreach(a[i]){
    foreach(a[j]){
            if(i!=j)
              a[i]!=a[j];}
  }
  }
    
endclass

module top;
  test t;
  
  initial
    begin
      t=new();
      t.randomize();
      $display("%p",t.a);
    end
endmodule
