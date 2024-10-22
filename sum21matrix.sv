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
  
  
