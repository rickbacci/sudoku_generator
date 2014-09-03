require_relative 'empty_matrix'

require_relative 'set_boxes'
require_relative 'clear_all'


require_relative 'check_sizes'
require_relative 'total_numbers_remaining'

require_relative 'solve_for_one'
require_relative 'solve_for_two'
require_relative 'solve_for_three'
require_relative 'solve_for_four'


## Generates random numbers in boxes 0, 4, and 8
set_boxes

## loops thru boxes, rows, and columns and clears numbers that are not possibilites
clear_all

def valid_puzzle?
  total = 0 ## should be 405
  @new_puz.each do |row|
    row.each do |element|
      unless element.is_a? Array
        total += element
      end
    end
  end
  puts
  p "total is #{total}"
  if total == 405

    return "Valid puzzle!"
  else
    return "Puzzle not valid!"
  end
end


@loops = 0

def generate_puzzle
  @loops += 1
  p "start of recursion"
  puts
  check_sizes
  puts
  @loop_once = 0
  
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
    p 'in solve_for_four'
    solve_for_four
  end
  clear_all
  puts
  check_sizes
  puts
  total_numbers_remaining?
  puts
  p "end of recursion"
  puts

  done = @new_puz.flatten.inject(0) { |total, value| total + value }

  if @loops > 50
    p "stopped after 50 recursions"
    return
  elsif done == 405
    p "puzzle solved after #{@loops} recursions"
    return
  else
   generate_puzzle
  end
end

 generate_puzzle

puts
@new_puz.each { |puzzle| p puzzle }

p valid_puzzle?

