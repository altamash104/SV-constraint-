// How do you exclude specific values from randomization?

//constraint for a to be between 0 and 20 & exclude 1, 8, 10 & 20 ?

class test;

	rand int a;				

	constraint c1{a inside {[0:20]};!(a inside {1,8,10,20});}

	function void post_randomize();
      $display("value of a is %0d", a);
	endfunction

endclass

module top;

	test t;

	initial 
    begin
		t = new();
	      repeat(10) begin
        t.randomize();
		end
	end
endmodule
