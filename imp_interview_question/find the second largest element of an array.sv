
module test;
  int a[];
  int largest,second_largest;
  
  initial
    begin
      a=new[10];
      a ='{1,7,8,12,11,19,10,21,29,36};
      //largest=a[0];
      //second_largest=a[0];
      for(int i=0;i<a.size();i++)begin
        if(a[i]>largest)begin
          second_largest=largest;
          largest=a[i];
        end
      else if (a[i] > second_largest && a[i]!=largest) 
        begin 
          second_largest = a[i]; 
        end
      end
      $display("Largest element=%0d",largest);
      $display("second_largest element=%0d",second_largest);
    end
endmodule
