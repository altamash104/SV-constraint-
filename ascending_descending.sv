//Ascending 

class packet;
  rand bit[3:0]a[];
  
  constraint c1{a.size inside{[5:10]};}
  constraint c2{foreach(a[i])
    if(i>0)
      //a[i-1]>a[i];}
      a[i]>a[i-1];}
endclass

module test;
  
  packet p_h;
  
  initial
    begin
      p_h=new();
      repeat(10)
      begin
        assert(p_h.randomize());
        
      end
      $display("%p",p_h.a);
    end
endmodule

//descending

class packet;
  rand bit[3:0]a[];
  
  constraint c1{a.size inside{[5:10]};}
  constraint c2{foreach(a[i])
    if(i>0)
      a[i-1]>a[i];}
endclass

module test;
  
  packet p_h;
  
  initial
    begin
      p_h=new();
      repeat(10)
      begin
        assert(p_h.randomize());
        
      end
      $display("%p",p_h.a);
    end
endmodule
