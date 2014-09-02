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
          if row.include? @one_num_remaining
            @new_puz[row_number][index] = @one_num_remaining
            return
          end
        end
      end
    end
  end
end


def solve_for_one_remaining_number_in_column
  build_column = []
  @num_in_column_to_set = 0

  @new_puz.each do |row|
    unless row[0].is_a? Integer
      build_column << row[0]
    end
  end

  flat = build_column.flatten
  
  (1..9).each do |num|

    if flat.count(num) == 1
       @num_in_column_to_set = num
    end 
    
    @new_puz.each_with_index do |row, index|
      unless row[0].is_a? Integer
         
        if row[0].include? @num_in_column_to_set
          @new_puz[index][0] = @num_in_column_to_set
          #return
        end 
      end
    end
  end
end

solve_for_one_remaining_number_in_row ## works
clear_all
solve_for_one_remaining_number_in_column
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





