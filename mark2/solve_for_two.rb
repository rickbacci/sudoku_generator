def solve_for_two(arrays)


  arrays.each_with_index do |array, row|
    array.each_with_index do |element, column|
      if element.is_a?(Array) #&& element.include?(number)
        if (element.size == 2) && @loop_once == 0

          new_val = element - [element[0]]
          arrays[row][column] = new_val
          solve_for_one_all(arrays)
          @history << "puzzle[#{row}][#{column}] set from #{element} to #{new_val} in solve_for_two"
          
          @loop_once = 1
          clear_all

          return
        end
      end
    end
  end
end