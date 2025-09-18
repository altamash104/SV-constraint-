module test;
  int a[];
  
  initial 
    begin  
    a=new[$urandom_range(5,10)];

    // filling  array with values,since size is not fixed to no iteration also not fixed that is why used foreach
    foreach (a[i]) 
      a[i] = i+1; 
      $display("Original array = %0p", a);

    // printing array in reverse order
    for (int i = a.size()-1; i >= 0; i--) 
      begin
      $write("%0d ", a[i]);
    end
  end
endmodule
