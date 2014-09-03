def solve_for_four
  (0..8).each do |row_number|
    column = 0
    @new_puz[row_number].each do |row_val|
      if (row_val.size == 4) && @loop_once == 0
        p row_val        
        p @new_puz[row_number][column] = row_val - [row_val[rand(0..2)]]
        
        @loop_once = 1
        clear_all

        break if @loop_once == 1
      end
      break if @loop_once == 1
      column += 1
    end
  end
end