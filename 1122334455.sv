class cons;
  rand int a[];
  constraint x{a.size()==20;}
  constraint y{foreach (a[i])
   if (i%2==0)
    a[i]==(i+2)/2;
     else
    //a[i]==(i+1)/2;}
    a[i]== (i+2)/2;}
  //a[i] ==a[i-1];}  
  function void post_randomize();
    $display("%0p",a);
  endfunction
endclass

module xyz;
   cons h;
  initial begin
    h=new();
    h.randomize();
  end
endmodule
