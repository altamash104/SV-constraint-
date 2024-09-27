//9 8 6 7 5 4 2 3 1 0
class A;
  rand int arr[];
  int temp;
  constraint c{arr.size==10;};
  constraint c1{foreach(arr[i]) arr[i]==arr.size-1-i;};
  function void post_randomize();
    foreach(arr[i]) begin
      if(i%4!=0 && i%2==0) begin
        temp=arr[i];
        arr[i]=arr[i+1];
        arr[i+1]=temp;
      
        
        arr[i]<=arr[i+1];
        arr[i+1]<=arr[i];
    end
      
    end
    //arr.rsort();
    
  endfunction
  
endclass

module test;
  A aa;
  initial begin
    aa=new;
    assert(aa.randomize());
    $display("%p",aa.arr);
    
  end
  
endmodule
