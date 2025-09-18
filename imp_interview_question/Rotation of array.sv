//Rotate an array left by 2 position 
module test;
  int a[];
  int  n,k;
    int q[$];
  initial begin
    // Initialize array
    a = '{1, 2, 3, 4, 5, 6, 7};
    n = a.size();
    k = 2; // rotate left by 2 positions


    // Copy elements from k to end
    for (int i = k; i < n; i++)
      q.push_back(a[i]);

    // Copy first k elements at the end
    for (int i = 0; i < k; i++)
      q.push_back(a[i]);

    $display("Left rotated array by %0d: %p", k,q);
  end
endmodule

///////////////////////////////////////////////////////
//Rotate an array right by 2 position 
module test;
  int a[];
  int k,n;
  int q[$];
  
  initial
    begin
      a='{1,2,3,4,5,6,7};
      k=2;
      n=a.size;
     // Copy last k elements first
    for (int i = n-k; i < n; i++)
      q.push_back(a[i]);

    // Copy remaining elements
    for (int i = 0; i < n-k; i++)
      q.push_back(a[i]);
        $display("Right rotated array by %0d: %p", k, q);
    end
endmodule
