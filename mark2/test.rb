require_relative 'empty_matrix'

require_relative 'puzzle_boxes'
require_relative 'puzzle_columns'
require_relative 'puzzle_rows'

require_relative 'update_puzzle'
require_relative 'clear_rows'
require_relative 'clear_boxes'
require_relative 'clear_columns'

#@puzzle_in_progress = @new_puz
10000.times do

  # unless @new_puz[rand(0..8)][rand(0..8)].size == 1
  #   @new_puz[rand(0..8)][rand(0..8)] = [rand(1..9)]

  #   update_puzzle

  #   clear_rows
  #   puts
  #   clear_boxes
  #   puts
  #   clear_columns

  # end
  if @new_puz[rand(0..8)][rand(0..8)]
  end

end

@new_puz[0][0] = [9]

update_puzzle

clear_rows
puts
#clear_boxes
puts
#clear_columns

puts
@new_puz.each { |a| p a }

#puts
 #@box8.each_slice(3) { |a| p a }

