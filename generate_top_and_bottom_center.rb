def generate_top_and_bottom_center

  @temp1 = @x.shuffle - col3
  @temp2 = @x.shuffle - col4
  @temp3 = @x.shuffle - col5

  
  @temp1a = (@temp1 & @temp2) ## top_center, first column
  @temp2a = (@temp2 & @temp3)
  @temp3a = (@temp3 & @temp1)

  @puzzle[ 1][0] = (@temp1 & @temp2)[0] #top_center, first column
  @puzzle[ 4][0] = (@temp1 & @temp2)[1] #
  @puzzle[ 7][0] = (@temp1 & @temp2)[2] #
  
  @puzzle[19][0] = (@temp1 - @temp1a)[0] # bottom_center, first column
  @puzzle[22][0] = (@temp1 - @temp1a)[1] #
  @puzzle[25][0] = (@temp1 - @temp1a)[2] #

  @puzzle[ 1][1] = (@temp2 - @temp1a)[0] 
  @puzzle[ 4][1] = (@temp2 - @temp1a)[1] 
  @puzzle[ 7][1] = (@temp2 - @temp1a)[2]

  @puzzle[19][1] = (@temp2 - @temp2a)[0] 
  @puzzle[22][1] = (@temp2 - @temp2a)[1]
  @puzzle[25][1] = (@temp2 - @temp2a)[2]

  @puzzle[ 1][2] = (@temp3 - @temp2a)[0]
  @puzzle[ 4][2] = (@temp3 - @temp2a)[1]
  @puzzle[ 7][2] = (@temp3 - @temp2a)[2]

  @puzzle[19][2] = (@temp3 - @temp3a)[0]
  @puzzle[22][2] = (@temp3 - @temp3a)[1]
  @puzzle[25][2] = (@temp3 - @temp3a)[2]
end