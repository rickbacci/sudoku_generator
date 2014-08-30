require_relative 'empty_puzzle.rb'

require_relative 'puzzle_rows.rb'
require_relative 'puzzle_columns.rb'
require_relative 'puzzle_boxes.rb'

require_relative 'generate_center'
require_relative 'generate_left_and_right_center'
require_relative 'generate_top_and_bottom_center'

require_relative 'box_0'
require_relative 'box_2'
require_relative 'box_6'
require_relative 'box_8'

require_relative 'solve_for_one'
require_relative 'solve_for_two'
require_relative 'solve_for_three'
require_relative 'solve_for_four'

require_relative 'print_puzzle'
require_relative 'baz'
require_relative 'update_puzzle'
  
  
@step_thru_boxes = 1

def generate box
  @box = box

  @numbers = [1,2,3,4,5,6,7,8,9]
  @i = 0
  @numbers_set = []

  find_lengths box

   @few = fewest_remaining? box

    #p "fewest remaining"
    #p @few
  p "*******************************************************************************************"
  p starting_box
  p "step thru #{@step_thru_boxes}"

  if @step_thru_boxes == 1 
    solve_for_one box
  elsif @step_thru_boxes == 2
    solve_for_two box
  elsif @step_thru_boxes == 3
    solve_for_three box
  elsif @step_thru_boxes == 4
    solve_for_four box
  else
  end

  p "step thru #{@step_thru_boxes}"
  @wait = 0
end

# generate_center
# generate_left_and_right_center
# generate_top_and_bottom_center
update_puzzle

def update_arrays
  box_0_array
  box_2_array
  box_6_array
  box_8_array
end
p" update arrays"
p update_arrays
puts
p "box 8 array"
p box_8_array



four_corners
four_corners
four_corners
four_corners
four_corners
four_corners
four_corners
four_corners
four_corners
four_corners
four_corners
four_corners
four_corners
four_corners
four_corners
four_corners
four_corners
four_corners
four_corners
four_corners
four_corners

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



p box0
p @puzzle
puts
puts

p box_0_array
p box_8_array

# if @element_lengths.include? 1 || @few == 1
  #   solve_for_one box
  # elsif @element_lengths.include? 2 || @few == 2
    
  #   solve_for_two box
  # elsif @element_lengths.include? 3
    
  #   solve_for_three box
  # elsif @element_lengths.include? 4
    
  #   solve_for_four box
  # end




  # @blah ||= 1
  # if @box.flatten == []
  #   p "All done!"
  #   p "starting lengths were: #{@starting_lengths}"
  #   p "There are only #{@amt_remaining} number #{@lowest_remaining}'s left."
  # else
  #   @blah += 1
  #   p "not done!"
  #   p "inside: #{@blah}"
  #   p "starting lengths were: #{@starting_lengths}"
  #   p "There are only #{@amt_remaining} number #{@lowest_remaining}'s left."

  #   if @blah < 10 ## escape loop
  #     p 'in recursion'
  #     generate box
  #   else
  #     "terminated for error"
  #   end
  # end

