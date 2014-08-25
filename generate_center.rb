
@x = [1,2,3,4,5,6,7,8,9]

def generate_center
  @x.shuffle!
  @puzzle[10] = @x[0,3]
  @puzzle[13] = @x[3,3]
  @puzzle[16] = @x[6,3]
end

def generate_box1
  @x.shuffle!
  @puzzle[1] = @x[0,3]
  @puzzle[4] = @x[3,3]
  @puzzle[7] = @x[6,3]
end