
module test;
  int da[];
  int sum;
  
  initial
    begin
      da=new[6];
      da='{1,2,3,4,5,6};
      sum=0;
      for(int i=0;i<da.size();i++)begin
        sum=sum+da[i];
      end
      $display("sum of an array=%0d",sum);
    end
endmodule

