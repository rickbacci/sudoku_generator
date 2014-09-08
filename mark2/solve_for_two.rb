def solve_for_two

  (0..8).each do |row_number|
    column = 0
    @new_puz[row_number].each do |row_val|
      unless row_val.is_a? Integer
        if (row_val.size == 2) && @loop_once == 0
          

         new_val = row_val - [row_val[0]]
          @new_puz[row_number][column] = new_val
          solve_for_one_all @new_puz
          @history << "puzzle[#{row_number}][#{column}] set from #{row_val} to #{new_val} in solve_for_two"
          
          @loop_once = 1
          clear_all

          return
        end
      end
      column += 1
    end
  end
end