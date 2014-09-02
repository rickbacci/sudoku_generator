
def set_box4
  numbers = [[1],[2],[3],[4],[5],[6],[7],[8],[9]].shuffle!
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