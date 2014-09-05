
def solve_for_one

  solve_for_one_boxes
  clear_all
  
  solve_for_one_rows
  clear_all

  solve_for_one_columns
  clear_all

end



def solve_for_one_rows
  @loop_once = 0

  (1..9).each do |num|
    @new_puz.each_with_index do |row, row_num|

      flat_row = []

      row.each_with_index do |element, col_num|
        flat_row << element unless element.is_a? Integer
      end

      flat_row = flat_row.flatten
      
      row.each_with_index do |element, col_num| 
        unless element.is_a? Integer
          if element.include?(num) && flat_row.count(num) == 1
            @new_puz[row_num][col_num] = num
            @history << "puzzle[#{row_num}][#{col_num}]set to #{num} in one remaining solve for one rows"
          elsif element.include? (num) && element.size == 1
            @new_puz[row_num][col_num] = num
            @history << "puzzle[#{row_num}][#{col_num}]set to #{num} in arr.size == 1 solve for one rows"
          end
        end
      end
    end
  end
end

  

def solve_for_one_columns
  @loop_once = 0
  

  (1..9).each do |num|
    (0..8).each do |column|
      column_array = []
      flat_column_array = []

      @new_puz.each do |row|
        column_array << row[column]
        flat_column_array << row[column] unless row[column].is_a? Integer
      end
       
      flat_column_array = flat_column_array.flatten

      column_array.each_with_index do |element, row|
        unless element.is_a? Integer
          if element.include?(num) && flat_column_array.count(num) == 1
            @new_puz[row][column] = num
            @history << "puzzle[#{}][#{}]set to #{num} in one remaining solve for one columns"
          elsif element.include?(num) && element.size == 1
            @new_puz[row][column] = num
            @history << "puzzle[#{}][#{}]set to #{num} in arr.size == 1 solve for one columns"
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
       
        if element.is_a?(Array) && element.include?(num)
          if element.size == 1
            @new_puz[row][col] = num

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

