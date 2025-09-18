
module test;
  int a[];
  
  initial
    begin
      a=new[6];
      a='{1, 3, 2, 3, 4, 1};
      
      for(int i=0;i<a.size;i++)begin
        for(int j=i+1;j<a.size;j++)begin
          if(a[i]==a[j])begin
            $display("Duplicate value=%0d",a[i]);
        end
      end
    end
    end
endmodule
