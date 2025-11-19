class test;
  rand bit [1:0] a;
  bit [1:0] q[$];

  // randc constraint mimic
  constraint c {
    !(a inside {q});    // a must NOT be from queue
  }
  //constraint c{unique{a,q};} //this way can also be done 
  
  function void post_randomize();
    q.push_back(a);
    if (q.size() == 4)
      q.delete();       // reset queue after complete cycle
  endfunction
endclass


module top;
  test t;

  initial begin
    t = new;

    repeat (10) begin   
      assert(t.randomize());
      $display("a= %0p",t.a);
      $display("q = %0p",t.q);
    end
  end
endmodule
