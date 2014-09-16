
def solve_for_fours(arrays, rows, columns, location, section)  #(0..2), (6..8) for box2

  arrays.each_with_index do |array, row|
    array.each_with_index do |element, column|
      if element.is_a?(Array)
        if (element.size == 4) && @loop_once == 0
          if section == :box2
            if (0..2).include?(row) && (6..8).include?(column)
              new_val = element - [element[0]]
              arrays[row][column] = new_val
              @history << "solve #{section} [#{row}][#{column}] set from #{element} to #{new_val} " +
                          "in solve_for_four ****************************"
              @loop_once = 1
              clear_all(arrays)
              return
            end
          else
            new_val = element - [element[0]]
            arrays[row][column] = new_val
            @history << " GUESS ********** puzzle[#{row}][#{column}] set from " +
                        "#{element} to #{new_val} in solve_for_four"
            @loop_once = 1
            clear_all(arrays)
            return
          end
        end
      end
    end
  end
end


         
