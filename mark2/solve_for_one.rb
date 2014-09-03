
def solve_for_one
  solve_for_one_rows
  clear_all
  solve_for_one_columns
  clear_all
  solve_for_one_boxes
  clear_all
end



def solve_for_one_rows
  @loop_once = 0

  (0..8).each do |row_number|
    column = 0
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

      @new_puz[row_number].each_with_index do |row, index|
        unless row.is_a? Integer
          if (row.include? @one_num_remaining)
            p @new_puz[row_number][index] = @one_num_remaining
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
  build_column = []
  build_column_flat = []
  @num_in_column_to_set = 0

  (0..8).each do |col|
    @new_puz.each do |row|
        build_column << row[col]

      unless row[col].is_a? Integer
        build_column_flat << row[col]
      end
    end

    flat = build_column_flat.flatten
  
    (1..9).each do |num|
      if flat.count(num) == 1
         @num_in_column_to_set = num
      end 
      
      @new_puz.each_with_index do |row, index|
        unless row[col].is_a? Integer
          if row[col].size == 1
            @new_puz[index][col] = @new_puz[index][col][0]
         # elsif @loop_once == 0 && (row[col].include? @num_in_column_to_set)
          elsif (row[col].include? @num_in_column_to_set)
            p "what does this do?"
            @new_puz[index][col] = @num_in_column_to_set
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
  @flat_array = []

  rows.each do |row|
    columns.each do |col|
      box_array << @new_puz[row][col]
      @flat_array << @new_puz[row][col] if @new_puz[row][col].is_a? Array
    end
  end
  @flat_array = @flat_array.flatten

  (1..9).each do |num|
    rows.each do |row|
      columns.each do |col|
         #p @flat_array
        element = @new_puz[row][col]
        #p @flat_array.count(num) == 1
        #p "row: #{row} column: #{col} element: #{@new_puz[row][col]}"
        #p "counting #{num}'s...there were #{@flat_array.count(num)} found"
        if element.is_a?(Array)
          if element.size == 1
            @new_puz[row][col] = @new_puz[row][col][0]
            clear_all
          elsif (@flat_array.count(num) == 1) && element.include?(num)
            @new_puz[row][col] = num
            clear_all
          end
        end
      end
    end
  end
end

