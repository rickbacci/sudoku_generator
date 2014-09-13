def solve_for_four(array, section)
  solve_for_rows( array, :solve_for_fours, section )
  solve_for_columns( array, :solve_for_fours, section )
  solve_for_boxes( array, :solve_for_fours, section )
end


def solve_for_fours(arrays, rows, columns, location, section)  #(0..2), (6..8) for box2 ## need rows and columns


  arrays.each_with_index do |array, row|
    array.each_with_index do |element, column|
      if element.is_a?(Array)
        if (element.size == 4) && @loop_once == 0
          if section == :box2

            if row == (0..2) && column == (6..8)
              new_val = element - [element[0]]
              arrays[row][column] = new_val

              @history << "solve box2 [#{row}][#{column}] set from #{element} to #{new_val} in solve_for_four ****************************"
              @loop_once = 1
              clear_all
              return
            end

          else
          
            new_val = element - [element[0]]
            arrays[row][column] = new_val
            @history << "********** GUESS ********** puzzle[#{row}][#{column}] set from #{element} to #{new_val} in solve_for_four"
          
            @loop_once = 1
            clear_all
            return

          end
        end
      end
    end
  end
end


         
