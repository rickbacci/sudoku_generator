
def set_box0
  numbers = [[1],[2],[3],[4],[5],[6],[7],[8],[9]].shuffle!
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