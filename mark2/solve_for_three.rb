
def solve_for_threes(arrays, rows, columns, location, section)

  #(1..9).each do |number|
  total_numbers_remaining?(arrays).each do |number|
    arrays.each_with_index do |array, row|
      array.each_with_index do |element, column|
 #       p column
        if element.is_a?(Array) && @number_totals_remaining[ number - 1 ] != 1
          if (element.size == 3) && ((@loop_once == 0) && element.include?(number)) 
            if section == :box2
              if (0..2).include?(row) && (6..8).include?(column)
                new_val = element - [number]
                arrays[row][column] = new_val
                @history << "solve #{section} [#{row}][#{column}] set from #{element} to " +
                            "#{new_val} in solve_for_three"
                @loop_once = 1
                clear_all(arrays)
                return
              end
            else
              new_val = element - [number]
              arrays[row][column] = new_val
              @history << " GUESS ********** puzzle[#{row}][#{column}] set from " +
                          "#{element} to #{new_val} in solve_for_three"
              @loop_once = 1
              clear_all(arrays)
              return
            end
          end
        end
      end
    end
  end
end
