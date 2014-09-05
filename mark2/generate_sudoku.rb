require_relative 'empty_matrix'

require_relative 'set_boxes'
require_relative 'clear_all'


require_relative 'check_sizes'
require_relative 'total_numbers_remaining'

require_relative 'solve_for_one'
require_relative 'solve_for_two'
require_relative 'solve_for_three'
require_relative 'solve_for_four'

@history = []
## Generates random numbers in boxes 0, 4, and 8
set_boxes

## loops thru boxes, rows, and columns and clears numbers that are not possibilites
clear_all

puts
@new_puz.each { |puzzle| p puzzle }
puts

def valid_puzzle?
  total = 0 ## should be 405
  @new_puz.each do |row|
    row.each do |element|
      unless element.is_a? Array
        total += element
      end
    end
  end
  #puts
  #p "total is #{total}"
  if total == 405

    return "Valid puzzle with a total of #{total}!"
  else
    return "Invalid puzzle! with a total of #{total}!"
  end
end

def no_arrays?
    @new_puz.each do |row|
      row.each do |element|
        return false if element.is_a? Array
      end
    end
    return true
  end

def test_print array
  puts "-------------------"

  (0..8).each do |row|
    puts  "| " + array[row][0].to_s + array[row][1].to_s + array[row][2].to_s + 
         " | " + array[row][3].to_s + array[row][4].to_s + array[row][5].to_s + 
         " | " + array[row][6].to_s + array[row][7].to_s + array[row][8].to_s + " |"

    puts "-------------------" if row == 2 || row == 5

  end
  puts "-------------------"
end


@loops = 0

def generate_puzzle
  #p "start of recursion"
  #puts
  total_numbers_remaining?
  #puts
  check_sizes
  #puts
  @loop_once = 0
  
  if (@size1 > 0) || @number_totals_by_row.include?(1)
    #p 'in solve_for_one'
    solve_for_one 

  elsif @size2 > 0
    #p 'in solve_for_two'
    solve_for_two

  elsif @size3 > 0
    #p 'in solve_for_three'
    solve_for_three

  elsif @size4 > 0
    #p 'in solve_for_four'
    solve_for_four
  end
  #clear_all
  #puts
  #check_sizes
  #puts
  #total_numbers_remaining?

  #puts
  #p "end of recursion"
  #puts
  

  done = @new_puz.flatten.inject(0) { |total, value| total + value }

  @loops += 1

  if @loops > 75
    p "stopped after 75 recursions"
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



@history.each { |h| p h } 

puts
@new_puz.each { |puzzle| p puzzle }
puts

p valid_puzzle?


test_print @new_puz

### either loop thru array and finish block by block
### or look for matches across rows, columns, or boxes for size 2 arrays"

