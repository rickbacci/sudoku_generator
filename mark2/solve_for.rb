
def solve_for_one(array, section)
  solve_for_rows( array, :solve_for_ones, section )
  solve_for_columns( array, :solve_for_ones, section )
  solve_for_boxes( array, :solve_for_ones, section )
end


def solve_for_pair(array, section)
  solve_for_rows( array, :solve_for_pairs, section )
  solve_for_columns( array, :solve_for_pairs, section )
  solve_for_boxes( array, :solve_for_pairs, section )
end

def solve_for_two(array, section)
  # solve_for_rows( array, :solve_for_pairs, section )
  # solve_for_columns( array, :solve_for_pairs, section )
  # solve_for_boxes( array, :solve_for_pairs, section )


   solve_for_rows( array, :solve_for_twos, section )
   solve_for_columns( array, :solve_for_twos, section )
   solve_for_boxes( array, :solve_for_twos, section )
  
  #@loop_again = 1
end

def solve_for_three(array, section)
  solve_for_rows( array, :solve_for_threes, section )
  solve_for_columns( array, :solve_for_threes, section )
  solve_for_boxes( array, :solve_for_threes, section )
end

def solve_for_four(array, section)
  solve_for_rows( array, :solve_for_fours, section )
  solve_for_columns( array, :solve_for_fours, section )
  solve_for_boxes( array, :solve_for_fours, section )
end

def build_flat_array( array, rows, columns )
  flat_array = []

  
  rows.each do |row|
    columns.each do |column|
      flat_array << array[row][column] if array[row][column].is_a?(Array)
    end
  end
  flat_array = flat_array.flatten
end