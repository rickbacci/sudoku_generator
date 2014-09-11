
def solve_box2
  coords_array = []
  #send(:solve_for_three, (0..2), (6..8))
  (0..2).each do |rows|
    (6..8).each do |columns|
      coords_array << [rows][columns]
    end
  end

  @box2.each_with_index do |element, index|

  end
      #p generate_puzzle(@new_puzzle[rows][columns])

end


