//solve before constraint 
class packet; 
  rand bit x;
  rand bit [3:0]y;
  //constraint c_2{solve x before y;}
  constraint c_1{(x==1) -> y==0;}//it will check first x==1 then y==0
endclass
  
  module top;
    
    initial
      begin 
        
        packet pkt;
        
        pkt =new();
        
        repeat(5)begin
          pkt.randomize();
          
          $display("x=%0d y=%0d",pkt.x,pkt.y);
        end
      end
  endmodule
