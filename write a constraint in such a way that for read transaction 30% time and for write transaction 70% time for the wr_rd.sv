class test;
  rand bit wr_rd;
  
  //lets take wr_rd =1;write operation.
  //lets take wr_rd=0; read operation.
  constraint c1{wr_rd dist {1'b0:=7,1'b1:=3};}
  
endclass

module test;
  test t;
  int count0,count1;
  int total=1000;
  initial
    begin
      t=new;
      $display("-----------------------");
      repeat(total)begin
         t.randomize();
        if (t.wr_rd == 0)
        count0++;
      else
        count1++;
      end
       
      $display("-----------------------");
      $display("Total samples = %0d", total);
      $display("Read (0)  = %0d (%.2f%%)", count0, 100.0*count0/total);
      $display("Write (1) = %0d (%.2f%%)", count1, 100.0*count1/total);
      $display("-----------------------");
    end
endmodule
