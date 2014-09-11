
def solve_for_one(array)
  solve_for_rows( array, :solve_for_ones )
  solve_for_columns( array, :solve_for_ones )
  solve_for_boxes( array, :solve_for_ones )
end


def build_flat_array( array, rows, columns )
  flat_array = []
  @array = array

  
  rows.each do |row|
    columns.each do |col|
      flat_array << @array[row][col] if @array[row][col].is_a?(Array)
    end
  end
  flat_array = flat_array.flatten
end


def solve_for_ones(array, rows, columns, location)
  clear_all
  @loop_once = 0
  @array = array

  flat_array = build_flat_array(@array, rows, columns)

  (1..9).each do |num|
    rows.each do |row|

      columns.each do |col|

        element = @array[row][col]
       
        if element.is_a?(Array) && element.include?(num)
          
          if element.size == 1

            @array[row][col] = num
            @history << "puzzle[#{row}][#{col}] set from #{element} to #{num} in solve_for_one #{location}(arr.size == 1)"
            @loop_once = 1

            clear_all
            return

          elsif flat_array.count(num) == 1

            @array[row][col] = num
            @history << "puzzle[#{row}][#{col}] set from #{element} to #{num} in solve_for_one  #{location}(one remaining)"
            @loop_once = 1

            clear_all
            return

          end
        end
      end
    end
  end
end


