
def solve_for_three
  (0..8).each do |row_number|
    column = 0
    @new_puz[row_number].each do |row_val|
      if (row_val.size == 3) && @loop_once == 0
        
        new_val = row_val - [row_val[rand(0..2)]]
        @new_puz[row_number][column] = new_val
        @history << "puzzle[#{row_number}][#{column}] set from #{row_val} to #{new_val} in solve_for_three"

        @loop_once = 1
        clear_all

        return
      end
      column += 1
    end
  end
end
