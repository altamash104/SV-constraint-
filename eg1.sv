class test;

	bit[3:0]a;
	int q[$];
	
	function void post_randomize();
		
		q.push_back(a);
		$display("value of a =%0d q=%0p ",a,q);
	endfunction
	
	constraint x{foreach (q[i])
		a!=q[i];
		}
		
endclass

module top;

test t;
	initial
		begin
		t=new;
		
			for(int i=0;i<15;i++)
			begin
        		if(i==0)
			begin
			    t.c.constraint_mode(0);
			    t.randomize(a);
			end
			else
			  begin
			    t.c.constraint_mode(1);
			    t.randomize(a);
			  end
		end
	end
/*initial // we can also achieve this by doing simply this but above solution is very detail
    begin
      t=new;
      repeat(20)begin
      t.randomize(a);
    end
    end*/
endmodule
