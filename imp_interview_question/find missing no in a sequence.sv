//Write a function to find missing number in a sequence (e.g.,[1,2,4,5] missing 3).
//
module test;
  int a;
  
  function int missing_no(int arr[], int n);
    int total_sum;
    int arr_sum;
    total_sum = n*(n+1)/2; // sum of 1 to n
    arr_sum = 0;

    for(int i=0; i<n-1; i++) begin
      arr_sum =arr_sum+ arr[i]; // array ka sum
    end

    return total_sum - arr_sum; // missing number
  endfunction

  initial begin
    int arr[] = '{1, 2, 4, 5};
    int miss;
    miss = missing_no(arr, 5);
    $display("Missing number = %0d", miss);
  end
endmodule

//using xor method
module test;

  function int missing_no_xor(int arr[], int n);
    int xor_full = 0;
    int xor_arr = 0;

    // 1..n ka XOR
    for(int i=1; i<=n; i++)
      xor_full ^= i;

    // Array ka XOR
    for(int i=0; i<n-1; i++)
      xor_arr ^= arr[i];

    return xor_full ^ xor_arr; // missing number
  endfunction

  initial begin
    int arr[] = '{1, 2, 4, 5};
    int miss;
    miss = missing_no_xor(arr, 5);
    $display("Missing number using XOR = %0d", miss);
  end
endmodule
