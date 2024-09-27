
class fibonacci;
  
  rand int a[];
  
  constraint c1{a.size()==10;}
  constraint c2{foreach (a[i])
    if(i==0)
      a[i]==0;
    else if(i==1)
      a[i]==1;
    else
      a[i]==a[i-1]+a[i-2];}
  
 function void post_randomize();
    $display("%0p",a);
    
  endfunction
endclass

module test;
  fibonacci h;
  initial
    begin
      h=new();
     
        begin
          h.randomize();
          $display("%p",h.a);
        end
    end
endmodule
