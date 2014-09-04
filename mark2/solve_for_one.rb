
def solve_for_one

  solve_for_one_boxes
  clear_all
  # solve_for_one_rows
  # clear_all

  # solve_for_one_columns
  # clear_all

end



def solve_for_one_rows
  @loop_once = 0

  (0..8).each do |row_number|
    #column = 0
    (1..9).each do |num|
      temp = []
      @new_puz[row_number].each do |row|
        unless row.is_a? Integer
          temp << row 
        end
      end
      flat = temp.flatten.count(num)
       if flat == 1
         puts
         p "There are #{flat} #{num}'s remaining"
         puts
         @one_num_remaining = num  
       end

      @new_puz[row_number].each_with_index do |row, column|
        unless row.is_a? Integer
          if (row.include? @one_num_remaining)
            p @new_puz[row_number][column] = @one_num_remaining

              #@history << total_numbers_remaining?
              @history << "puzzle[#{row_number}][#{column}] set to #{@one_num_remaining} in solve_for_one rows for 1 number remaining"

            clear_all
            return
          end
        end
      end
    end
  end
end


def solve_for_one_columns
  @loop_once = 0
  column_array = []
  flat_column_array = []

  (0..8).each do |col|
    @new_puz.each_with_index do |row, index|
      column_array << @new_puz[index][col]
      flat_column_array << @new_puz[index][col] if @new_puz[index][col].is_a? Array
    end

    flat_column_array = flat_column_array.flatten
  
    
    (1..9).each do |num|
      @new_puz.each_with_index do |row, index|
        unless row[col].is_a? Integer

          element = @new_puz[index][col]

          if row[col].size == 1

            @new_puz[index][col] = num
            #@history << total_numbers_remaining?
            @history << "puzzle[#{index}][#{col}] set(arr.size == 1) from #{element} to #{num} in solve_for_one columns"

          elsif (flat_column_array.count(num) == 1) && element.include?(num)

            @new_puz[index][col] = num
            @history << "puzzle[#{row}][#{col}] set(1 remaining) from #{element} to #{num} in solve_for_one columns"

          end 
        end
      end
    end
  end
end


def solve_for_one_boxes
  solve_for_box (0..2), (0..2)
    clear_all
  solve_for_box (0..2), (3..5)
    clear_all
  solve_for_box (0..2), (6..8)
    clear_all

  solve_for_box (3..5), (0..2)
    clear_all
  solve_for_box (3..5), (3..5)
    clear_all
  solve_for_box (3..5), (6..8)  
    clear_all


  solve_for_box (6..8), (0..2)
    clear_all
  solve_for_box (6..8), (3..5)
    clear_all
  solve_for_box (6..8), (6..8)
    clear_all
end

def solve_for_box rows, columns
  @loop_once = 0
  box_array = []
  flat_array = []

  rows.each do |row|
    columns.each do |col|
      box_array << @new_puz[row][col]
      flat_array << @new_puz[row][col] if @new_puz[row][col].is_a? Array
    end
  end

  flat_array = flat_array.flatten

  (1..9).each do |num|
    rows.each do |row|
      columns.each do |col|
        
        element = @new_puz[row][col]
       
        if element.is_a?(Array)
          if element.size == 1
            @new_puz[row][col] = element[0]

            @history << "puzzle[#{row}][#{col}] set(arr.size == 1) from #{element} to #{element[0]} in solve_for_one boxes"
            clear_all

          elsif (flat_array.count(num) == 1) && element.include?(num)

            @new_puz[row][col] = num
            @history << "puzzle[#{row}][#{col}] set(one remaining) from #{element} to #{num} in solve_for_one boxes"

            clear_all
          end
        end
      end
    end
  end
end

