


def set_boxes
  set_box0
  set_box4
  set_box8
end

def set_box0
  numbers = [1,2,3,4,5,6,7,8,9].shuffle!
  shuffled_numbers = []
  shuffled_numbers << @new_puzzle[0][0] = numbers.pop
  shuffled_numbers << @new_puzzle[0][1] = numbers.pop
  shuffled_numbers << @new_puzzle[0][2] = numbers.pop
  shuffled_numbers << @new_puzzle[1][0] = numbers.pop
  shuffled_numbers << @new_puzzle[1][1] = numbers.pop
  shuffled_numbers << @new_puzzle[1][2] = numbers.pop
  shuffled_numbers << @new_puzzle[2][0] = numbers.pop
  shuffled_numbers << @new_puzzle[2][1] = numbers.pop
  shuffled_numbers << @new_puzzle[2][2] = numbers.pop
  shuffled_numbers
end

def set_box4
  numbers = [1,2,3,4,5,6,7,8,9].shuffle!
  shuffled_numbers = []
  shuffled_numbers << @new_puzzle[3][3] = numbers.pop
  shuffled_numbers << @new_puzzle[3][4] = numbers.pop
  shuffled_numbers << @new_puzzle[3][5] = numbers.pop
  shuffled_numbers << @new_puzzle[4][3] = numbers.pop
  shuffled_numbers << @new_puzzle[4][4] = numbers.pop
  shuffled_numbers << @new_puzzle[4][5] = numbers.pop
  shuffled_numbers << @new_puzzle[5][3] = numbers.pop
  shuffled_numbers << @new_puzzle[5][4] = numbers.pop
  shuffled_numbers << @new_puzzle[5][5] = numbers.pop
  shuffled_numbers
end

def set_box8
  numbers = [1,2,3,4,5,6,7,8,9].shuffle!
  shuffled_numbers = []
  shuffled_numbers << @new_puzzle[6][6] = numbers.pop
  shuffled_numbers << @new_puzzle[6][7] = numbers.pop
  shuffled_numbers << @new_puzzle[6][8] = numbers.pop
  shuffled_numbers << @new_puzzle[7][6] = numbers.pop
  shuffled_numbers << @new_puzzle[7][7] = numbers.pop
  shuffled_numbers << @new_puzzle[7][8] = numbers.pop
  shuffled_numbers << @new_puzzle[8][6] = numbers.pop
  shuffled_numbers << @new_puzzle[8][7] = numbers.pop
  shuffled_numbers << @new_puzzle[8][8] = numbers.pop
  shuffled_numbers
end
