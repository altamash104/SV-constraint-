module test;
  
  int a[];
  int q[$];
  
  initial
    begin
      a=new[7];
      a='{1,3,2,3,4,1,4};
      
      a.sort();
      $display("sorted array=%0p",a);
      
      q.push_back(a[0]);
      for(int i=1;i<a.size;i++)
        begin
        if(a[i]!=a[i-1])
          q.push_back(a[i]);
    	end
  
    $display("Unique elements queue = %0p", q);
    end
endmodule
