module test;
  int max, min;
  int a[];
  //integer i;
  
  initial
    begin
      a=new[6];
     
      a='{10,9,7,4,2,5};
      //assume first element as max and min then start comparing with other element of the array
      min=a[0];
      max=a[0];
      
      for(int i=1;i<a.size();i++)begin
        if(a[i]<min)//if no is small it will update the min
          min=a[i];
        if(a[i]>max)//if no is max it will update the max
          max=a[i];
        
      end
     $display("%0d,%0d",min,max);
    end
endmodule
