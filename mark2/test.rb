require_relative 'empty_matrix'

require_relative 'puzzle_boxes'
require_relative 'puzzle_columns'
require_relative 'puzzle_rows'

require_relative 'update_puzzle'
require_relative 'clear_rows'
require_relative 'clear_boxes'
require_relative 'clear_columns'

update_puzzle # sets/updates all instance variables
clear_boxes
clear_rows
clear_columns

num_set = 0


def check_column_for_number column, number
  #p "Checking column ##{column}"
  @new_puz.each do |row|
    #p "Number #{number} has already been set in this column!"
    return false if row[column] == [number]
  end
  return true
end


def set_box_0
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

def set_box_4
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

def set_box_8
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

 set_box_0

update_puzzle
clear_rows
update_puzzle
clear_columns
update_puzzle
clear_boxes
update_puzzle

 set_box_4

update_puzzle
clear_rows
update_puzzle
clear_columns
update_puzzle
clear_boxes
update_puzzle

 set_box_8

update_puzzle
clear_rows
update_puzzle
clear_columns
update_puzzle
clear_boxes
update_puzzle



# 15.times do
#   row = rand(0..8)
#   col = rand(0..8)
#   num = rand(1..9)

#     @not_already_set = @new_puz[row][col].size != 1
#     @not_in_row = @new_puz[row].include?([num]) == false
#     @not_in_column = check_column_for_number(col, num)

#   if @not_already_set && (@not_in_row && @not_in_column)
#     @new_puz[row][col] = [num]
#     p "setting #{num}"
#     num_set += 1
#     #p "#{num_set} numbers have been set"

#     clear_rows
#     clear_boxes
#     clear_columns

#     update_puzzle
#   end
#   break if num_set == 81
# end

# p "box 0"
#     p self.send("box" << (0.to_s))



puts
@new_puz.each { |a| p a }

