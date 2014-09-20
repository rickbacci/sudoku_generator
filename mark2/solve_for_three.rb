
def solve_for_threes(arrays, rows, columns, location, section)
  clear_all(arrays)
  #p @loop_once

  total_numbers_remaining?(arrays).each do |number|
    arrays.each_with_index do |array, row|
      array.each_with_index do |element, column|
        
        #if rows.include?(row) && columns.include?(column)
          #p "row: #{row} col: #{column}"

          if element.is_a?(Array) && @number_totals_remaining[ number - 1 ] != 1
            if (element.size == 3) && ((@loop_once == 0) && element.include?(number)) 
              new_value = number
              arrays[row][column] = new_value
              save_history(location, row, column, element, new_value, :solve_for_three, "*** guess ***")
              @loop_once = 1
              clear_all(arrays)
              return
            end
          end
        #end
      end
    end
  end
end
