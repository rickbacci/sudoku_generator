
def solve_for_twos(array, rows, columns, location, section)
  clear_all(array)
  @loop_once = 0

  total_numbers_remaining?(array).each do |number|
    rows.each do |row|
      temp_array = []
      temp_location = []
      columns.each do |column|
        element = array[row][column]

        temp_location << [row, column]
        temp_array << element

        if (temp_array.size % 9) == 0
          temp_array.each_with_index do |element, index|
          if (element.size == 2) && ((@loop_once == 0) && element.include?(number)) 
              if section == :box2
                if (0..2).include?(row) && (6..8).include?(column)
                  if temp_array.count(element) == 2
                    r = temp_location[index][0]
                    c = temp_location[index][1]
                    array[r][c] = [element[0]] 
                    #@loop_again = 0 #### do i need?
                    @history << "solve #{section} [#{r}][#{c}] set from #{element} to" + 
                                " #{[element[0]]} (matching pair) from #{location}"
                    @loop_once = 1
                    clear_all(array)
                    return
                  else
                    r = temp_location[index][0]
                    c = temp_location[index][1]
                    array[r][c] = [element[0]] #if @loop_again == 1
                    #@loop_again = 0
                    @history << "solve #{section} [#{r}][#{c}] set from #{element}" + 
                                " to #{[element[0]]} in solve_for_two #{location}"
                    clear_all(array)
                    @loop_once = 1
                    return
                  end
                end
              #else
                if temp_array.count(element) == 2
                  r = temp_location[index][0]
                  c = temp_location[index][1]
                  array[r][c] = [element[0]]
                  @history << " GUESS ********** puzzle[#{r}][#{c}] set from " +
                              "#{element} to #{[element[0]]} (matching pair) from #{location}"
                  @loop_once = 1
                  clear_all(array)
                  return
                else
                  r = temp_location[index][0]
                  c = temp_location[index][1]
                  array[r][c] = [element[0]] #if @loop_again == 1
                  #@loop_again = 0
                  @history << " GUESS ********** puzzle[#{r}][#{c}] set from" +
                              " #{element} to #{[element[0]]} in solve_for_two #{location}"
                  clear_all(array)
                  @loop_once = 1
                  return
                end
              end # end box2
            end
          end
          temp_array = []
          temp_location = []
        end
      end
    end
  end
end

