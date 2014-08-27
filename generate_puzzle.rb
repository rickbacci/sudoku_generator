require_relative 'empty_puzzle.rb'

require_relative 'puzzle_rows.rb'
require_relative 'puzzle_columns.rb'
require_relative 'puzzle_boxes.rb'

require_relative 'generate_center'
require_relative 'generate_left_and_right_center'
require_relative 'generate_top_and_bottom_center'

require_relative 'box_0'

require_relative 'solve_for_one'
require_relative 'solve_for_two'
require_relative 'solve_for_three'
require_relative 'solve_for_four'

require_relative 'print_puzzle'


def find_lengths box
  @element_lengths = []

  box.each do |box|
    @element_lengths << box.length
  end

  @starting_lengths ||= @element_lengths
  @element_lengths
end

def fewest_remaining? values
  p @flat = values.flatten
  @lowest_remaining ||= 0
  
  (1..9).each do |num| 
    if num == 1
      @lowest_remaining = num
      @amt_remaining = @flat.count(num)
    elsif (@flat.count(num) < @amt_remaining)
      @lowest_remaining = num
      @amt_remaining = @flat.count(num)
    end
  end
  p "There are only #{@amt_remaining} number #{@lowest_remaining}'s left."
end

generate_center
generate_left_and_right_center
generate_top_and_bottom_center


def generate box

  find_lengths box
  fewest_remaining? box
  solve_for_one box


  if @element_lengths.include? 1
    solve_for_one box
  elsif @element_lengths.include? 2
   # solve_for_one box
    solve_for_two box
  elsif @element_lengths.include? 3
    # solve_for_one box
    # solve_for_two box
    solve_for_three box
  elsif @element_lengths.include? 4
    # solve_for_one box
    # solve_for_two box
    # solve_for_three box
    solve_for_four box
  end

  @blah ||= 1
  if @box.flatten == []
    p "All done!"
    p "starting lengths were: #{@starting_lengths}"
    p "There are only #{@amt_remaining} number #{@lowest_remaining}'s left."
  else
    @blah += 1
    p "not done!"
    p "inside: #{@blah}"
    p "starting lengths were: #{@starting_lengths}"
    p "There are only #{@amt_remaining} number #{@lowest_remaining}'s left."

    if @blah < 10 ## escape loop
      p 'in recursion'
      generate box
    else
      "terminated for error"
    end
  end
end

generate box_0_array




#print_puzzle
puts "---------------------------------------------------------------------------------------------"
p @puzzle[0..2]
p @puzzle[3..5]
p @puzzle[6..8]
puts
p @puzzle[9..11]
p @puzzle[12..14]
p @puzzle[15..17]
puts
p @puzzle[18..20]
p @puzzle[21..23]
p @puzzle[24..26]
puts "---------------------------------------------------------------------------------------------"
