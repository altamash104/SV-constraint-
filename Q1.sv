/*
Basically ,generate 20 packet each packet will be having 16 bits,the first 8 bits are address and remaining 8 bits data,data for each packet random 
but data for each address is consecutive.
*/

class test;
  rand bit[7:0] a[20];
  rand bit[7:0] d[20];
   bit[15:0]packet[20];
  
  
  constraint c_addr{foreach(a[i])
    a[i] inside {[0:20]};}
  constraint c0{ foreach(a[i])
    //if(i>0)
      a[i]==i;
    }
  constraint c1{foreach(d[i])
    d[i] inside {[50:100]}; }
  
  function void  post_randomize();
                for(int i=0;i<=20;i++)
                  packet[i]={a[i],d[i]};
                foreach(packet[i])
                  $display("%b",packet[i]);
  endfunction
  
  
endclass

module top;
  test t;
  initial
    begin
      //repeat(20)begin
      t=new;
      t.randomize();
     end
  
  
endmodule
