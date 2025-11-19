class test;
  rand int a[4][4];
  
  constraint c1{foreach (a[i,j]) a[i][j] inside {[0:10]};}
    
    constraint c2{foreach(a[i])
      a[i][0]+a[i][1]+a[i][2]+a[i][3]==21;}
    
    constraint c3{foreach(a[j])
      a[0][j]+a[1][j]+a[2][j]+a[3][j]==21;}
    
    function void post_randomize();
                             
      foreach(a[i])begin
        foreach(a[j])begin
          $write(a[i][j]);
         end
          $display();
       end                  
                             
    endfunction

endclass
    
    module top;
      test t;
      initial
        begin
          t=new();
          t.randomize();
   
        end
    endmodule


//Another method
class test;
  rand bit[4:0] matrix[4][4]; 
    
    
    
   function void post_randomize;
    for(int i=0;i<4;i++)
      begin
        for(int j=0;j<4;j++)
          begin
            $write(matrix[i][j]);
          end
        $display();
      end
   endfunction
  
  
  
  constraint c1 {
     //for coulmn 
    (matrix[0][0] + matrix[0][1] + matrix[0][2]+matrix[0][3] == 21);
    (matrix[1][0] + matrix[1][1] + matrix[1][2]+matrix[1][3] == 21);
    (matrix[2][0] + matrix[2][1] + matrix[2][2]+matrix[2][3] == 21);
    (matrix[3][0] + matrix[3][1] + matrix[3][2]+matrix[3][3] == 21);
    //for row
    (matrix[0][0] + matrix[1][0]+matrix[2][0]+matrix[3][0]==21);
    ( matrix[0][1]+matrix[1][1]+ matrix[2][1]+matrix[3][1]==21);
    (matrix[0][2]+matrix[1][2]+ matrix[2][2]+matrix[3][2]==21);
    (matrix[0][3]+matrix[1][3]+matrix[2][3]+matrix[3][3]==21);
    //for diagonal
    (matrix[0][0]+matrix[1][1]+matrix[2][2]+matrix[3][3]==21);
    (matrix[0][3]+matrix[1][2]+matrix[2][1]+matrix[3][0]==21);
    }
  
  
endclass

module top;
  test t;
  
  initial
    begin
      t=new();
      t.randomize();
      $display("matrix=%0p",t.matrix);
    end
endmodule
  
  
