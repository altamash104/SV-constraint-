//prime number between 100
class prime_numbers;
  
  rand bit [31:0]i;
  
  constraint x{i inside {[8:100]};}
  constraint y{
              i!=1;
    if(i==2)
    {i==2;}
      else
      {i%2!=0;}
        if(i==3)
        {i==3;}
          else
          {i%3!=0;}
            if(i==5)
            {i==5;}
              else
              {i%5!=0;}
                if(i==7)
                {i==7;}
    			else
                {i%7!=0;}
  }
                  
                  endclass
                  
                  module top;
                    prime_numbers prime;
                    
                    initial
                      begin
                        
                        prime =new();
                        
                        repeat(20)begin
                          prime.randomize();
                          $display("the prime no inside 100:%0d",prime.i);
                        end
                      end
                  endmodule
                  

// another way of doing  prime number
class test;
 rand int unsigned a;
  int b[4]={2,3,5,7};
  constraint s1{foreach(b[i]) {if(a!=2 && a!=3 && a!=5 && a!=7) a%b[i]!=0;}
    a!=1;}
  constraint c2{a<=20;}
endclass
 module testt;
   test t;
    initial begin
      t= new();
      repeat(70)
        begin
          assert(t.randomize);
          $display(t.a);
        end
    end
 endmodule
