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
require_relative 'solve_for_three'
require_relative 'solve_for_four'
require_relative 'validation'
require_relative 'print_puzzle'

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



def generate_puzzle(array)
  #p "start of recursion"
  set_variables
  clear_all
  
  total_numbers_remaining?(array)
  check_sizes(array)
  
  @loop_once = 0

 p "this is size1 value : #{@size1}"
 p "number totals remaining include 1: #{@number_totals_remaining.include?(1)}"
  
  if (@size1 > 0) || @number_totals_remaining.include?(1)
    puts "in one"
    solve_for_one(array)
  elsif @size2 > 0
    solve_for_two(array)
  elsif @size3 > 0
    solve_for_three(array)
  elsif @size4 > 0
    solve_for_four(array)
  end
  
  #p "end of recursion"  

  done = array.flatten.inject(0) { |total, value| total + value }
  @loops += 1

  if @loops > 75
    p "stopped after 75 recursions"
    puts
    #return
  elsif done == 405 && no_arrays?(array)
    p "puzzle solved after #{@loops} recursions"
    puts
    #return
  else
    generate_puzzle(array)
  end
end

  generate_puzzle(@new_puzzle)



  print_history
  p valid_puzzle?(@new_puzzle)
  print_final_puzzle(@new_puzzle)

  


 # p @new_puzzle[0]
 # p col0




####### THIS NEEDS TO LOOP THRU EVERYTHING LIKE THE ONE'S DOES AND CHECK FOR MATCHING PAIRS!!!
### or look for matches across rows, columns, or boxes for size 2 arrays"
###
### place number with least possibilities remaining
### either loop thru array and finish block by block

