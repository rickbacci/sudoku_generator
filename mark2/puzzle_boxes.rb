
def box0(new_puzzle)
  new_puzzle[0][0..2] + new_puzzle[1][0..2] + new_puzzle[2][0..2]
end

def box1(new_puzzle)
  new_puzzle[0][3..5] + new_puzzle[1][3..5] + new_puzzle[2][3..5]
end

def box2(new_puzzle)
  @box2 = new_puzzle[0][6..8] + new_puzzle[1][6..8] + new_puzzle[2][6..8]
end

def box3(new_puzzle)
  new_puzzle[3][0..2] + new_puzzle[4][0..2] + new_puzzle[5][0..2]
end

def box4(new_puzzle)
  new_puzzle[3][3..5] + new_puzzle[4][3..5] + new_puzzle[5][3..5]
end

def box5(new_puzzle)
  new_puzzle[3][6..8] + new_puzzle[4][6..8] + new_puzzle[5][6..8]
end

def box6(new_puzzle)
  new_puzzle[6][0..2] + new_puzzle[7][0..2] + new_puzzle[8][0..2]
end

def box7(new_puzzle)
  new_puzzle[6][3..5] + new_puzzle[7][3..5] + new_puzzle[8][3..5]
end

def box8(new_puzzle)
  new_puzzle[6][6..8] + new_puzzle[7][6..8] + new_puzzle[8][6..8]
end


