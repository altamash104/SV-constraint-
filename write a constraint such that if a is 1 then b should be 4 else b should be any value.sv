// write a constraint such that if a is 1 then b should be 4 else b should be any value

class test;
	
	rand bit a;					
	rand bit[2:0] b;					
  
	constraint c1 {(a==1) -> (b==4);solve a before b;}

endclass

module top;

  	test t;
  
	initial 
    begin
      
		t=new();	
      
      repeat(10) 
          begin
            t.randomize();
            $display("values of a=%0d, & b=%0d",t.a, t.b);
        end
    end

endmodule
