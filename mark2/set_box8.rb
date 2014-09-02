
def set_box8
  numbers = [[1],[2],[3],[4],[5],[6],[7],[8],[9]].shuffle!
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