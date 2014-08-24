
def generate_left_and_right_center
  @temp1, @temp2, @temp3 = [], [], []

  @temp1 = @x.shuffle - @puzzle[10]
  @temp2 = @x.shuffle - @puzzle[13]
  @temp3 = @x.shuffle - @puzzle[16]

  @puzzle[9] = (@temp1 & @temp2)
  @puzzle[11] = @x.shuffle - @puzzle[10] - @puzzle[9]

  @puzzle[12] = (@temp2 & @temp3)
  @puzzle[14] = @x.shuffle - @puzzle[13] - @puzzle[12]
  
  @puzzle[15] = (@temp3 & @temp1)
  @puzzle[17] = @x.shuffle - @puzzle[16] - @puzzle[15]
end