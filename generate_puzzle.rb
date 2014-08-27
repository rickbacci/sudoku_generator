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
  @element_lengths
end


generate_center
generate_left_and_right_center
generate_top_and_bottom_center



def generate box

  find_lengths box

  if @element_lengths.include? 1
    solve_for_one box
  elsif @element_lengths.include? 2
    solve_for_two box
  elsif @element_lengths.include? 3
    solve_for_three box
  else
    solve_for_four box
  end

  if @box.flatten == []
      p "All done!"
  else
    p "not done!"
    generate box 
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
