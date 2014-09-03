require_relative 'empty_matrix'

require_relative 'clear_rows'
require_relative 'clear_boxes'
require_relative 'clear_columns'

require_relative 'set_box0'
require_relative 'set_box4'
require_relative 'set_box8'


# set_box0
# set_box4
# set_box8

def clear_all
  clear_rows
  clear_boxes
  clear_columns
end

clear_all

@loop_once = 0

def solve_for_one_remaining_number_in_row ## works
  @loop_once = 0

  (0..8).each do |row_number|
    column = 0
    (1..9).each do |num|
      temp = []
      @new_puz[row_number].each do |row|
        unless row.is_a? Integer
          temp << row 
        end
      end
      flat = temp.flatten.count(num)
      #p "There are #{flat} #{num}'s remaining"
       if flat == 1
         @one_num_remaining = num  
       end

      @new_puz[row_number].each_with_index do |row, index|
        unless row.is_a? Integer
          if (row.include? @one_num_remaining) #&& @loop_once == 0
            @new_puz[row_number][index] = @one_num_remaining
            @loop_once = 1
            return
          end
        end
      end
    end
  end
end

def solve_for_one_remaining_number_in_column
  @loop_once = 0
  build_column = []
  build_column_flat = []
  @num_in_column_to_set = 0

  (0..8).each do |col|
    @new_puz.each do |row|
        build_column << row[col]

      unless row[col].is_a? Integer
        build_column_flat << row[col]
      end
    end

    flat = build_column_flat.flatten
  
    (1..9).each do |num|
      if flat.count(num) == 1
         @num_in_column_to_set = num
      end 
      
      @new_puz.each_with_index do |row, index|
        unless row[col].is_a? Integer
          if row[col].size == 1
            @new_puz[index][col] = @new_puz[index][col][0]
            @loop_once = 1
          elsif @loop_once == 0 && (row[col].include? @num_in_column_to_set)
            @new_puz[index][col] = @num_in_column_to_set
            @loop_once = 1
          end 
        end
      end
    end
  end
end


def solve_for_box rows, columns
  @loop_once = 0
  box_array = []
  @flat_array = []

  rows.each do |row|
    columns.each do |col|
      box_array << @new_puz[row][col]
      @flat_array << @new_puz[row][col] if @new_puz[row][col].is_a? Array
    end
  end
  @flat_array = @flat_array.flatten

  (1..9).each do |num|
    rows.each do |row|
      columns.each do |col|
          #p @flat_array

        element = @new_puz[row][col]
        #p @flat_array.count(num) == 1
        #p "row: #{row} column: #{col} element: #{@new_puz[row][col]}"
        #p "counting #{num}'s...there were #{@flat_array.count(num)} found"
        if element.is_a? Array
          if element.is_a?(Array) && (element.size == 1)
            @new_puz[row][col] = @new_puz[row][col][0]
            @loop_once = 1
          elsif (@flat_array.count(num) == 1) && element.include?(num)
            @new_puz[row][col] = num if @loop_once == 0
            @loop_once = 1
          end
        end
      end
    end
  end
end




def solve_boxes_for_one

  solve_for_box (0..2), (0..2)
  clear_all

  solve_for_box (0..2), (3..5)
  clear_all

  solve_for_box (0..2), (6..8)
  clear_all


  solve_for_box (3..5), (0..2)
  clear_all

  solve_for_box (3..5), (3..5)
  clear_all

  solve_for_box (3..5), (6..8)  
  clear_all


  solve_for_box (6..8), (0..2)
  clear_all

  solve_for_box (6..8), (3..5)
  clear_all

  solve_for_box (6..8), (6..8)
  clear_all

end

# solve_for_one_remaining_number_in_row ## works
# clear_all

# solve_for_one_remaining_number_in_column
# clear_all

# solve_for_one_remaining_number_in_column
# clear_all

# solve_for_one_remaining_number_in_row ## works
# clear_all

# solve_for_one_remaining_number_in_column
# clear_all

# # 2 in col1 row7
# solve_for_one_remaining_number_in_column
# clear_all

# # [2] row5 col7 & [9] in row7 col5
# solve_for_one_remaining_number_in_column
# clear_all

## row 3,4,5
## col 0,1,2

# # should get the 2 in row4 col2
# p solve_for_box (3..5), (0..2)
# clear_all

# #should get the [3] in row3 col1
# p solve_for_box (3..5), (0..2)
# clear_all

# # row4 col0 solve for single 6
# p solve_for_box (3..5), (0..2)
# clear_all


solve_boxes_for_one
solve_for_one_remaining_number_in_row ## works
solve_for_one_remaining_number_in_column

solve_boxes_for_one
solve_for_one_remaining_number_in_row ## works
solve_for_one_remaining_number_in_column

solve_boxes_for_one
solve_for_one_remaining_number_in_row ## works
clear_all

solve_for_one_remaining_number_in_column
clear_all

solve_for_one_remaining_number_in_row ## works
clear_all
solve_boxes_for_one
clear_all
solve_for_one_remaining_number_in_row ## works
clear_all

solve_for_one_remaining_number_in_row ## works
clear_all
solve_for_one_remaining_number_in_row ## works
clear_all

solve_for_one_remaining_number_in_row ## works
clear_all

solve_for_one_remaining_number_in_row ## works
clear_all
solve_for_one_remaining_number_in_row ## works
clear_all
solve_for_one_remaining_number_in_row ## works
clear_all
solve_for_one_remaining_number_in_row ## works
clear_all
solve_for_one_remaining_number_in_row ## works
clear_all
solve_for_one_remaining_number_in_row ## works
clear_all
solve_for_one_remaining_number_in_row ## works
clear_all

solve_for_one_remaining_number_in_column
clear_all
solve_for_one_remaining_number_in_column
clear_all

solve_boxes_for_one
clear_all
solve_boxes_for_one
clear_all


solve_boxes_for_one
clear_all

solve_for_one_remaining_number_in_row ## works
clear_all


puts
@new_puz.each { |a| p a }

# p "box 0"
#     p self.send("box" << (0.to_s))



#def solve_for_two

#   (0..8).each do |row_number|
#     column = 0
#     @new_puz[row_number].each do |row_val|
#       if (row_val.size == 2) && @loop_once == 0
#         p "row number #{row_number} column number #{column}"

#         p @new_puz[row_number][column] = row_val - [row_val[0]]
#         @loop_once = 1
#         return
#       end
#     end
#     column += 1
#   end
# end
 
#  def solve_for_three
#   (0..8).each do |row_number|
#     column = 0
#     @new_puz[row_number].each do |row_val|
#       if (row_val.size == 3) && @loop_once == 0
#         p row_val
#         p "row number #{row_number} column number #{column}"
        
#         p @new_puz[row_number][column] = row_val - [row_val[rand(0..2)]]
#         @loop_once = 1
#         break if @loop_once == 1
#       end
#       break if @loop_once == 1
#       column += 1
#     end
#   end
# end


# def finish_puzzle
#   p "start of recursion"
#   check_lengths
#   @loop_once = 0
  
#   if @size2 > 0 || total_numbers_remaining? == 2
#     p 'in solve_for_two'
#     solve_for_two
#   elsif @size3 > 0
#     p 'in solve_for_three'
#     solve_for_three
#   elsif @size4 > 0
#     p 'in size4'
#   end
#   clear_rows
#   clear_boxes
#   clear_columns
#   p "end of recursion"
#   check_lengths
# end


# # finish_puzzle
# # finish_puzzle
# # finish_puzzle
# # finish_puzzle
# # finish_puzzle
# # finish_puzzle
# # finish_puzzle





