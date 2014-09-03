require_relative 'empty_matrix'

require_relative 'set_boxes'
require_relative 'clear_all'


require_relative 'check_lengths'
require_relative 'total_numbers_remaining'

require_relative 'solve_for_one'
require_relative 'solve_for_two'
require_relative 'solve_for_three'
require_relative 'solve_for_four'


## Generates random numbers in boxes 0, 4, and 8
set_boxes 

## loops thru boxes, rows, and columns and clears numbers that are not possibilites
clear_all

## shows lengths of starting matrix
check_lengths



def generate_puzzle
  puts
  p "start of recursion"
  puts
  @loop_once = 0
  
  solve_for_one

  if @size1 > 0
    p 'in solve_for_one'
    solve_for_one

  elsif @size2 > 0 #|| total_numbers_remaining? == 2
    p 'in solve_for_two'
    solve_for_two

  elsif @size3 > 0
    p 'in solve_for_three'
    solve_for_three

  elsif @size4 > 0
    p 'in size4'
    solve_for_four
  end
  clear_all
  puts
  check_lengths
  puts
  p "end of recursion"
  puts
end

# generate_puzzle
# generate_puzzle

# generate_puzzle
# generate_puzzle
# generate_puzzle
# generate_puzzle
# generate_puzzle
# generate_puzzle
# generate_puzzle
# generate_puzzle
# generate_puzzle
# generate_puzzle
# generate_puzzle
# generate_puzzle
# generate_puzzle
# generate_puzzle
# generate_puzzle
# generate_puzzle
# generate_puzzle
# generate_puzzle
# generate_puzzle
# generate_puzzle
# generate_puzzle
# generate_puzzle
# generate_puzzle
# generate_puzzle
# generate_puzzle
# generate_puzzle
# generate_puzzle
# generate_puzzle
# generate_puzzle
# generate_puzzle
puts
total_numbers_remaining?

puts
@new_puz.each { |puzzle| p puzzle }
