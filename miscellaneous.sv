//Multiple Constraints

class cons;
  rand bit [3:0]a,b,c;
  
  //constraint valid_values{0<a<b<c;}//wrong approach
  constraint valid_values{0<a;a<b;b<c;}
endclass

module test;
  initial
    begin
      cons c1;
      c1=new();
      repeat(10)begin
        c1.randomize();
        $display("a:%d b:%d c:%d",c1.a,c1.b,c1.c);
      end
    end
endmodule
