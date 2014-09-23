
def solve_for_one(array, section)
  solve_for_boxes( array, :solve_for_ones, section )
  solve_for_rows( array, :solve_for_ones, section )
  solve_for_columns( array, :solve_for_ones, section )
end

def solve_for_two(array, section)
  solve_for_boxes( array, :solve_for_twos, section )

  #return unless box_finished?(@box2)

  solve_for_rows( array, :solve_for_twos, section )
  solve_for_columns( array, :solve_for_twos, section )
  #@loop_again = 1
end

def solve_for_three(array, section)
  solve_for_boxes( array, :solve_for_threes, section )
  # solve_for_rows( array, :solve_for_threes, section )
  # solve_for_columns( array, :solve_for_threes, section )
end

def solve_for_four(array, section)
  solve_for_boxes( array, :solve_for_fours, section )
  # solve_for_rows( array, :solve_for_fours, section )
  # solve_for_columns( array, :solve_for_fours, section )
end
