


def set_boxes
  set_box((0..2), (0..2))
  set_box((3..5), (3..5))
  set_box((6..8), (6..8))
end

def set_box(rows, columns)

  numbers = [1,2,3,4,5,6,7,8,9].shuffle!
  shuffled_numbers = []

  rows.each do |row|
    columns.each do |col|
      shuffled_numbers << @new_puzzle[row][col] = numbers.pop
    end
  end
  shuffled_numbers
end

# def set_box4
#   numbers = [1,2,3,4,5,6,7,8,9].shuffle!
#   shuffled_numbers = []
#   shuffled_numbers << @new_puzzle[3][3] = numbers.pop
#   shuffled_numbers << @new_puzzle[3][4] = numbers.pop
#   shuffled_numbers << @new_puzzle[3][5] = numbers.pop
#   shuffled_numbers << @new_puzzle[4][3] = numbers.pop
#   shuffled_numbers << @new_puzzle[4][4] = numbers.pop
#   shuffled_numbers << @new_puzzle[4][5] = numbers.pop
#   shuffled_numbers << @new_puzzle[5][3] = numbers.pop
#   shuffled_numbers << @new_puzzle[5][4] = numbers.pop
#   shuffled_numbers << @new_puzzle[5][5] = numbers.pop
#   shuffled_numbers
# end

# def set_box8
#   numbers = [1,2,3,4,5,6,7,8,9].shuffle!
#   shuffled_numbers = []
#   shuffled_numbers << @new_puzzle[6][6] = numbers.pop
#   shuffled_numbers << @new_puzzle[6][7] = numbers.pop
#   shuffled_numbers << @new_puzzle[6][8] = numbers.pop
#   shuffled_numbers << @new_puzzle[7][6] = numbers.pop
#   shuffled_numbers << @new_puzzle[7][7] = numbers.pop
#   shuffled_numbers << @new_puzzle[7][8] = numbers.pop
#   shuffled_numbers << @new_puzzle[8][6] = numbers.pop
#   shuffled_numbers << @new_puzzle[8][7] = numbers.pop
#   shuffled_numbers << @new_puzzle[8][8] = numbers.pop
#   shuffled_numbers
# end
