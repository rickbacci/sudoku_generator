
def box0
  @box0 = @new_puz[0][0..2] + @new_puz[1][0..2] + @new_puz[2][0..2]
end

def box1
  @box1 = @new_puz[0][3..5] + @new_puz[1][3..5] + @new_puz[2][3..5]
end

def box2
  @box2 = @new_puz[0][6..8] + @new_puz[1][6..8] + @new_puz[2][6..8]
end

def box3
  @box3 = @new_puz[3][0..2] + @new_puz[4][0..2] + @new_puz[5][0..2]
end

def box4
  @box4 = @new_puz[3][3..5] + @new_puz[4][3..5] + @new_puz[5][3..5]
end

def box5
  @box5 = @new_puz[3][6..8] + @new_puz[4][6..8] + @new_puz[5][6..8]
end

def box6
  @box6 = @new_puz[6][0..2] + @new_puz[7][0..2] + @new_puz[8][0..2]
end

def box7
  @box7 = @new_puz[6][3..5] + @new_puz[7][3..5] + @new_puz[8][3..5]
end

def box8
  @box8 = @new_puz[6][6..8] + @new_puz[7][6..8] + @new_puz[8][6..8]
end



