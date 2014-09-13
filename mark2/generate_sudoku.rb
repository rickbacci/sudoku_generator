require_relative 'starting_matrix'

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
require_relative 'ranges'

require_relative 'solve_for_three'
require_relative 'solve_for_four'
require_relative 'validation'
require_relative 'print_puzzle'
require_relative 'solve_box2'

def initial_setup
  @new_puzzle = @starting_matrix

  set_boxes
  clear_all
  set_variables
  print_initial_puzzle
  @history = []
  @loops = 0
end

initial_setup

@loop_again = 0

def generate_puzzle(array, section = :all)
  
  #p "start of recursion"
  set_variables
  clear_all
  
  total_numbers_remaining?(array)
  check_sizes(array)
  
  @loop_once = 0
  #@loop_again = 0

 #p "this is size1 value : #{@size1}"
 #p "number totals remaining include 1: #{@number_totals_remaining.include?(1)}"
  
  if (@size1 > 0) || @number_totals_remaining.include?(1)
    solve_for_one(array, section)
  elsif @size2 > 0
    solve_for_two(array, section)
  elsif @size3 > 0
    solve_for_three(array, section)
  elsif @size4 > 0
    solve_for_four(array, section)
  end
  
  #p "end of recursion"  

  done = array.flatten.inject(0) { |total, value| total + value }
  @loops += 1

  if @loops > 75
    p "stopped after 75 recursions"
    puts
    return
  elsif done == 405 && no_arrays?(array)
    p "puzzle solved after #{@loops} recursions"
    puts
    return
  else
    generate_puzzle(array, section)
  end
end



starting_matrix = @starting_matrix


generate_puzzle(starting_matrix, :box2)

#generate_puzzle(@box2clear)
#p @new_puzzle[0..2][6..8]
#p @box2clear


  print_history
  p valid_puzzle?(starting_matrix)
  print_final_puzzle(starting_matrix)


####### THIS NEEDS TO LOOP THRU EVERYTHING LIKE THE ONE'S DOES AND CHECK FOR MATCHING PAIRS!!!
### or look for matches across rows, columns, or boxes for size 2 arrays"
###
### place number with least possibilities remaining
### either loop thru array and finish block by block

