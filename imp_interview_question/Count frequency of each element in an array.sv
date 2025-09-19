
module test;
  int a[];
  int count=1;
  initial
    begin
      a='{1,2,4,2,3,4,7,3,5,6};
      
      a.sort();
      $display("sorted array=%0p",a);
     
      for(int i = 1; i < a.size(); i++)begin
      if (a[i] == a[i-1]) begin
        count++;
      end 
        else begin
        $display("Element %0d occurs %0d times", a[i-1], count);
        count = 1;
      end
    end
      $display("Element %0d occurs %0d times", a[a.size()-1], count);//To print last element
  end
endmodule
