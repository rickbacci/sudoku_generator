

def save_history(location, row, column, element, new_value, method, reason)

  @history << "#{location} [#{row}][#{column}] #{method} (#{reason}) --- " + 
  "Box2 finished? #{box_finished?(@box2)} --- set from #{element} to #{new_value}"
  @box2finished += 1 if box_finished?(@box2) == false
end

def solve_for_fours(arrays, rows, columns, location, section)
  clear_all(arrays)

  
  total_numbers_remaining?(arrays).each do |number|
    arrays.each_with_index do |array, row|
      array.each_with_index do |element, column|
        #if rows.include?(row) && columns.include?(column)
          #p "row: #{row} col: #{column}"
          if element.is_a?(Array)
            if (element.size == 4) && ((@loop_once == 0) && element.include?(number)) 
              new_val = element - [number]
              arrays[row][column] = new_value
              save_history(location, row, column, element, new_value, :solve_for__four, "*** guess ***")
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


         
