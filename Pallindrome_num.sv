//palindrom Numbers by James 
class test;;
  rand int a;
  int b;
  int c;
  //constraint c1{a inside {[1001:9999]};}  //for 4 digit numbers
  constraint c2{a inside {[10001:99999]};} //for 5 digit numbers

  //constraint c1{a==1234;}

  function void post_randomize();
    //     b=(a/1000*1000) + (((a/100)%10)*100) + ((a/100)%10)*10 + a/1000;   //for 4 digit numbers
    //c=(a/1000*1000) + 0 + 0 + a/1000;  //let say if you want 00 in the middle
    
    b=(a/10000*10000) + ((a/1000)%10)*1000 + (((a/100)%10)*100) + ((a/1000)%10)*10 + a/10000;  //for 5 digit numbers


    $display("%0d",b);
    //$display("%0d",c);

  endfunction
endclass

module eg;
  test t;
  initial
    begin
      t=new();
    repeat(10)
      t.randomize();
    end
endmodule
