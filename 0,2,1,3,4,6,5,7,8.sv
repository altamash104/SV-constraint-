//0,2,1,3,4,6,5,7,8
class test;
  rand int da[];
  
  constraint c1{da.size==9;}
  
 constraint c2{foreach(da[i]){
  if(i%4==0)
    da[i]==i;
  else if(i%2==0)
    da[i]==i-1;
  else
   da[i]==da[i-1]+2;}
             }
endclass
                  
module test;
 test t;
  initial
    begin
      t=new;
      t.randomize();
      $display("da=%0p",t.da);
    end
endmodule
