
def solve_for_three(arrays)

  (1..9).each do |number|
    arrays.each_with_index do |array, row|
      array.each_with_index do |element, column|
        if element.is_a?(Array) && @number_totals_remaining[ number - 1 ] != 1
          if (element.size == 3) && ((@loop_once == 0) && element.include?(number)) 
            
            new_val = element - [number]
            arrays[row][column] = new_val
            @history << "puzzle[#{row}][#{column}] set from #{element} to #{new_val} in solve_for_three"
            
            @loop_once = 1
            clear_all

            return
          end
        end
      end
    end
  end
end
