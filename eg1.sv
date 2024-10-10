class packet;

	bit[3:0]a;
	int q[$];
	
	function void post_randomize();
		
		q.push_back(a);
		$display("value of a =%0d",a);
	endfunction
	
	constraint c{foreach (q[i])
		a!=q[i];
		}
		
endclass

module top;

packet p;
	initial
		begin
		p=new;
		
			for(int i=0;i<15;i++)
			begin
        		if(i==0)
			begin
			    p.c.constraint_mode(0);
			    p.randomize(a);
			end
			else
			  begin
			    p.c.constraint_mode(1);
			    p.randomize(a);
			  end
		end
	end
endmodule
