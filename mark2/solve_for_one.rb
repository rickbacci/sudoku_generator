
def solve_for_ones(array, rows, columns, location, section)
  clear_all(array)
  @loop_once = 0

  flat_array = build_flat_array(array, rows, columns)

  
  total_numbers_remaining?(array).each do |num|
    rows.each do |row|
      columns.each do |column|

        element = array[row][column]
        if element.is_a?(Array) && element.include?(num)
          if section == :box2
            if (0..2).include?(row) && (6..8).include?(column)
              if element.size == 1
                array[row][column] = num
                @history << "solve #{section} [#{row}][#{column}] set from #{element} to #{num} in" +
                            " solve_for_one #{location}(arr.size == 1)"
                @loop_once = 1
                clear_all(array)
                return
              elsif flat_array.count(num) == 1
                array[row][column] = num
                @history << "solve #{section} [#{row}][#{column}] set from #{element} to #{num} in " +
                            "solve_for_one  #{location}(one remaining)"
                @loop_once = 1
                clear_all(array)
                return
              end
            end
          #else #### has to be gone.
            if element.size == 1
              array[row][column] = num
              @history << "********** puzzle[#{row}][#{column}] set from #{element} to #{num} in " +
                          "solve_for_one #{location}(arr.size == 1)"
              @loop_once = 1
              clear_all(array)
              return
            elsif flat_array.count(num) == 1
              array[row][column] = num
              @history << "********** puzzle[#{row}][#{column}] set from #{element} to #{num} in " +
                          "solve_for_one  #{location}(one remaining)"
              @loop_once = 1
              clear_all(array)
              return
            end
          end ## end of box2
        end
      end
    end
  end
end
