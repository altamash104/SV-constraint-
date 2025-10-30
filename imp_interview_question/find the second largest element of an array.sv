
module test;
  int a[];
  int largest,second_largest;//take to variable 
  
  initial
    begin
      a=new[10];
      a ='{1,7,8,12,11,19,10,21,29,36};
      
     // largest=a[0];
      //second_largest=a[0];
      
      for(int i=0;i<a.size();i++)begin
        if(a[i]>largest)begin//if any element in the array is larger than last known largest element,
          second_largest=largest;//then previous largest become the second largest
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

/*
Aproach:we assume two variable one is "largest" and other is "second_largest" and start comparing them in a given array, 
we check if a number is greater than largest element it become the new largest and previous largest will become the second_largest,
similarly we check condition for second_largest element if any element in the array is greater than current 
second_largest element and lesser than larger element that means it becomes new second largest number. 

*/
