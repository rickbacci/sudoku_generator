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
require_relative 'solve_for'
require_relative 'solve_for_pairs'


new_puzzle = starting_matrix
@pairs = []
@box2finished = 0

def initial_setup(new_puzzle)
  set_boxes(new_puzzle)
  clear_all(new_puzzle)
  set_variables(new_puzzle)
  print_initial_puzzle(new_puzzle)
  @history = []
  @loops = 0
  new_puzzle
end

#initial_setup(new_puzzle)

def generate_puzzle(array, section = nil)
  
  set_variables(array)
  clear_all(array)
  
  total_numbers_remaining?(array)
  check_sizes(array)
  
  @loop_once = 0
 
  if (@size1 > 0) || @number_totals_remaining.include?(1)
    solve_for_one(array, section)
  elsif @size2 > 0
    solve_for_two(array, section)
  elsif @size3 > 0
    solve_for_three(array, section)
  else
    solve_for_four(array, section)
  end
  
  done = array.flatten.inject(0) { |total, value| total + value }
  @loops += 1

  if @loops == 75
    p "puzzle stopped after #{@loops} recursions"
    p "box2 not finished for #{@box2finished} loops"

    @box2finished = 0
    puts
    array
    return
  elsif done == 405 && no_arrays?(array)
    p "puzzle solved after #{@loops} recursions"
    p "box2 not finished for #{@box2finished} loops"
    p @pairs
    @pairs = []
    @box2finished = 0
    puts
    return
  else
    generate_puzzle(array, section)
    array
  end
end

@saved_puzzles = []
@failed_puzzles = []
@valid_total = 0
@failed_total = 0
possibly_bad_puzzle = []


amount = 5

amount.times do
  new_puzzle = starting_matrix
  
  possibly_bad_puzzle = initial_setup(new_puzzle)

  generate_puzzle(new_puzzle)

  print_history
  p valid_puzzle?(new_puzzle)
  print_final_puzzle(new_puzzle)

  if !valid_puzzle?(new_puzzle) || !no_arrays?(new_puzzle)
    @failed_total += 1
    @failed_puzzles << possibly_bad_puzzle
  end

  if  valid_puzzle?(new_puzzle) && no_arrays?(new_puzzle)
    @valid_total += 1
    @saved_puzzles << new_puzzle
  end
end
puts

@failed_puzzles.each do |puzzle|
  p puzzle
end

# @saved_puzzles.each do |puzzle|
#   print_final_puzzle(puzzle)
# end

 
puts

p "There were #{@valid_total} valid puzzles generated out of #{amount}!"
puts
puts "Success rate: #{(@valid_total.to_f / amount) * 100} percent"




## array of pairs? some way to see if they will fail?
############ send number array thru 1 at a time from main
###### need to loop thru numbers by fewest to most remaining...
### if section !nil then get ranges of section.
####### THIS NEEDS TO LOOP THRU EVERYTHING LIKE THE ONE'S DOES AND CHECK FOR MATCHING PAIRS!!!
### or look for matches across rows, columns, or boxes for size 2 arrays"
###
### place number with least possibilities remaining
### either loop thru array and finish block by block

