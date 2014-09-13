require_relative 'starting_matrix'
require_relative 'generate_sudoku'


@new_puzzle = @starting_matrix

def solve_box2
  coords_array = []
  #send(:solve_for_three, (0..2), (6..8))
  (0..2).each do |rows|
    (6..8).each do |columns|
      coords_array << [rows, columns]
    end
  end

def box2
  @box2 = @new_puzzle[0][6..8] + @new_puzzle[1][6..8] + @new_puzzle[2][6..8]
end

box2

p coords_array
p @box2
  @box2.each_with_index do |element, index|
   # generate_puzzle(element) if element.is_a?(Array)
  end

end


solve_box2