
def set_boxes
  set_box0
  set_box4
  set_box8
end

def set_box0
  numbers = [1,2,3,4,5,6,7,8,9].shuffle!
  shuffled_numbers = []
  shuffled_numbers << @new_puz[0][0] = numbers.pop
  shuffled_numbers << @new_puz[0][1] = numbers.pop
  shuffled_numbers << @new_puz[0][2] = numbers.pop
  shuffled_numbers << @new_puz[1][0] = numbers.pop
  shuffled_numbers << @new_puz[1][1] = numbers.pop
  shuffled_numbers << @new_puz[1][2] = numbers.pop
  shuffled_numbers << @new_puz[2][0] = numbers.pop
  shuffled_numbers << @new_puz[2][1] = numbers.pop
  shuffled_numbers << @new_puz[2][2] = numbers.pop
  shuffled_numbers
end

def set_box4
  numbers = [1,2,3,4,5,6,7,8,9].shuffle!
  shuffled_numbers = []
  shuffled_numbers << @new_puz[3][3] = numbers.pop
  shuffled_numbers << @new_puz[3][4] = numbers.pop
  shuffled_numbers << @new_puz[3][5] = numbers.pop
  shuffled_numbers << @new_puz[4][3] = numbers.pop
  shuffled_numbers << @new_puz[4][4] = numbers.pop
  shuffled_numbers << @new_puz[4][5] = numbers.pop
  shuffled_numbers << @new_puz[5][3] = numbers.pop
  shuffled_numbers << @new_puz[5][4] = numbers.pop
  shuffled_numbers << @new_puz[5][5] = numbers.pop
  shuffled_numbers
end

def set_box8
  numbers = [1,2,3,4,5,6,7,8,9].shuffle!
  shuffled_numbers = []
  shuffled_numbers << @new_puz[6][6] = numbers.pop
  shuffled_numbers << @new_puz[6][7] = numbers.pop
  shuffled_numbers << @new_puz[6][8] = numbers.pop
  shuffled_numbers << @new_puz[7][6] = numbers.pop
  shuffled_numbers << @new_puz[7][7] = numbers.pop
  shuffled_numbers << @new_puz[7][8] = numbers.pop
  shuffled_numbers << @new_puz[8][6] = numbers.pop
  shuffled_numbers << @new_puz[8][7] = numbers.pop
  shuffled_numbers << @new_puz[8][8] = numbers.pop
  shuffled_numbers
end
