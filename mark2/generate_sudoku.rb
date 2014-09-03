require_relative 'empty_matrix'

require_relative 'set_boxes'
require_relative 'clear_all'


require_relative 'check_lengths'
require_relative 'total_numbers_remaining'

require_relative 'solve_for_1_in_row'
require_relative 'solve_for_two'
require_relative 'solve_for_three'



## Generates random numbers in boxes 0, 4, and 8
set_boxes 

## loops thru boxes, rows, and columns and clears numbers that are not possibilites
clear_all 

@loop_once = 0




def finish_puzzle
  p "start of recursion"
  check_lengths
  @loop_once = 0
  
  if @size1 > 0
    solve_boxes_for_one
    clear_all

    solve_for_one_remaining_number_in_row ## works
    clear_all
    solve_for_one_remaining_number_in_column
    clear_all
  
  elsif @size2 > 0 || total_numbers_remaining? == 2
    p 'in solve_for_two'
    solve_for_two
  elsif @size3 > 0
    p 'in solve_for_three'
    solve_for_three
  elsif @size4 > 0
    p 'in size4'
  end
  clear_all
  p "end of recursion"
  check_lengths
end

# finish_puzzle
# finish_puzzle
# finish_puzzle
# finish_puzzle
# finish_puzzle
# finish_puzzle
# finish_puzzle


puts
@new_puz.each { |a| p a }

# p "box 0"
#     p self.send("box" << (0.to_s))