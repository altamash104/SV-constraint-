//print value random values 0,1,x,z
class  test;
   logic[3:0]a;
  randc bit [1:0]flag;
  
  function void post_randomize();
    if(flag==0)
      a=0;
    else if(flag==1)
      a=1;
    else if (flag==2)
      a='x;
    else
      a='z;
  endfunction
//Another way
  //  function void post_randomize();
  //   case(flag)
  //     2'b00: a=0;
  //     2'b01: a=1;
  //     2'b10: a='x;
  //     2'b11: a='z;
  //   endcase
  // endfunction
 /* 
 Note-
 'x' and 'z' are special keywords in SystemVerilog that represent the unknown and high-impedance states,
 it's necessary to use a single quote to identify them. 
 Without the single quote, they would just be seen as normal text or identifiers that don't have a predefined meaning 
 in this context.
That's why a = 'x; and a = 'z; are the correct ways to assign unknown and high-impedance values.
*/
endclass

module top;
  test t;
  
  initial
    begin
      t=new;
      repeat(8)
        begin
      t.randomize();
           $display("%0d",t.a);
        end
          
     
    end
endmodule
