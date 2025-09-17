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
///////////////////////////////////////////////////////
//Another method using function
module test;
  int a[];
  
  function void max_min(output int max,output int min);
	int max,min;
    max=a[0];
    min=a[0];
    for(int i=1;i<a.size();i++)
      begin
        if(a[i]<min)
          min=a[i];
        if(a[i]>max)
          max=a[i];
      end
  endfunction
  
  initial
    begin
      int max ,min;
      a=new[6];
  	  a='{10,9,7,4,2,5};
      max_min(max,min);
      $display("max_value=%0d,min_value=%0d",max,min);
      
    end
endmodule
/*
Note-
We use void function when:
We want to return multiple outputs (via output/ref arguments).
eg-above
-->No return value is needed, only an action (printing, logging, file operations).
    eg-function void display()
          $display("used for display only");
       endfunction
-->In UVM/testbench code, where framework phases require void.
    eg- function void build_phase(uvm_phase phase)
              super.build_phase(phase)
        endfunction
-->To update a global variable or object without returning anything
    module test;
      int sum;
      function void compute_sum(input int a,b)
            sum=a+b;
      endfunction
    endmodule
    here we update a global variable no need to return 
*/
