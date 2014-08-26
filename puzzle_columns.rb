def col0
  @col0 =  
   [@puzzle[ 0][0]] << @puzzle[ 3][0] << @puzzle[ 6][0] << 
   [@puzzle[ 9][0]] << @puzzle[12][0] << @puzzle[15][0] << 
    @puzzle[18][0] << @puzzle[21][0] << @puzzle[24][0]
    col0
end

def col1
  @col1 =  
  [@puzzle[ 0][1]] << @puzzle[ 3][1] << @puzzle[ 6][1] << 
   @puzzle[ 9][1] << @puzzle[12][1] << @puzzle[15][1] << 
   @puzzle[18][1] << @puzzle[21][1] << @puzzle[24][1]
   col1
end             

def col2
  @col2 =  
  [@puzzle[ 0][2]] << @puzzle[ 3][2] << @puzzle[ 6][2] << 
   @puzzle[ 9][2] << @puzzle[12][2] << @puzzle[15][2] <<
   @puzzle[18][2] << @puzzle[21][2] << @puzzle[24][2]
   col2
end

def col3
  @col3 =   
  [@puzzle[ 1][0]] << @puzzle[ 4][0] << @puzzle[ 7][0] << 
   @puzzle[10][0]  << @puzzle[13][0] << @puzzle[16][0] << 
   @puzzle[19][0]  << @puzzle[22][0] << @puzzle[25][0]
end

def col4
  @col4 = [] <<
  @puzzle[ 1][1] << @puzzle[ 4][1] << @puzzle[ 7][1] << 
  @puzzle[10][1] << @puzzle[13][1] << @puzzle[16][1] << 
  @puzzle[19][1] << @puzzle[22][1] << @puzzle[25][1]
end

def col5
  @col5 = [] << 
  @puzzle[ 1][2] << @puzzle[ 4][2] << @puzzle[ 7][2] << 
  @puzzle[10][2] << @puzzle[13][2] << @puzzle[16][2] << 
  @puzzle[19][2] << @puzzle[22][2] << @puzzle[25][2]
end

def col6
  @col6 = [] << 
  @puzzle[ 2][0] << @puzzle[ 5][0] << @puzzle[ 8][0] << 
  @puzzle[11][0] << @puzzle[14][0] << @puzzle[17][0] << 
  @puzzle[20][0] << @puzzle[23][0] << @puzzle[26][0]
end

def col7
  @col7 = [] << 
  @puzzle[ 2][1] << @puzzle[ 5][1] << @puzzle[ 8][1] << 
  @puzzle[11][1] << @puzzle[14][1] << @puzzle[17][1] << 
  @puzzle[20][1] << @puzzle[23][1] << @puzzle[26][1]
end

def col8
  @col8 = [] << 
  @puzzle[ 2][2] << @puzzle[ 5][2] << @puzzle[ 8][2] << 
  @puzzle[11][2] << @puzzle[14][2] << @puzzle[17][2] << 
  @puzzle[20][2] << @puzzle[23][2] << @puzzle[26][2]
end