
def solve_for_three(arrays)


  arrays.each_with_index do |array, row|
    array.each_with_index do |element, column|
      if element.is_a?(Array)
        if (element.size == 3) && @loop_once == 0

          new_val = element - [element[0]]
          @new_puz[row][column] = new_val
          solve_for_one_all @new_puz
          @history << "puzzle[#{row}][#{column}] set from #{element} to #{new_val} in solve_for_three"
          
          @loop_once = 1
          clear_all

          return
        end
      end
    end
  end
end
