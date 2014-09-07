require_relative 'empty_matrix'

require_relative 'set_boxes'

require_relative 'puzzle_boxes'
require_relative 'puzzle_columns'
require_relative 'puzzle_rows'
require_relative 'set_variables'

require_relative 'clear_all'

require_relative 'check_sizes'
require_relative 'total_numbers_remaining'

require_relative 'solve_for_one'
require_relative 'solve_for_two'
require_relative 'solve_for_three'
require_relative 'solve_for_four'
require_relative 'validation'
require_relative 'print_puzzle'

set_boxes
clear_all
print_initial_puzzle


@loops = 0

def generate_puzzle
  #p "start of recursion"
  
  total_numbers_remaining?
  check_sizes
  
  @loop_once = 0
  
  if (@size1 > 0) || @number_totals_by_row.include?(1)
    solve_for_one 
  elsif @size2 > 0
    solve_for_two
  elsif @size3 > 0
    solve_for_three
  elsif @size4 > 0
    solve_for_four
  end
  
  #p "end of recursion"  

  done = @new_puz.flatten.inject(0) { |total, value| total + value }
  @loops += 1

  if @loops > 75
    p "stopped after 75 recursions"
    puts
    return
  elsif done == 405 && no_arrays?
    p "puzzle solved after #{@loops} recursions"
    puts
    return
  else
    generate_puzzle
  end
end

 generate_puzzle





print_history
p valid_puzzle?
print_final_puzzle(@new_puz)

### either loop thru array and finish block by block
### or look for matches across rows, columns, or boxes for size 2 arrays"

