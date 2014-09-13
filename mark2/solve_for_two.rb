
def solve_for_two(array, section)
   solve_for_rows( array, :solve_for_twos, section )
   solve_for_columns( array, :solve_for_twos, section )
   solve_for_boxes( array, :solve_for_twos, section )
  
  @loop_again = 1
end


def solve_for_twos(array, rows, columns, location, section)
  clear_all
  @loop_once = 0

  rows.each do |row|
    temp_array = []
    temp_location = []
    
    columns.each do |column|
      
      element = array[row][column]

      temp_location << [row, column]
      temp_array << element

      if (temp_array.size % 9) == 0
        
        temp_array.each_with_index do |element, index|
          
          #p element
          #p @array
          if element.size == 2 && @loop_once == 0
             
            if temp_array.count(element) == 2
              r = temp_location[index][0]
              c = temp_location[index][1]

              array[r][c] = [element[0]]
              @history << "puzzle[#{r}][#{c}] set from #{element} to #{[element[0]]} (matching pair found) from #{location}"

              @loop_once = 1
              clear_all
              return

            else
              r = temp_location[index][0]
              c = temp_location[index][1]

              array[r][c] = [element[0]] if @loop_again == 1
              @loop_again = 0

              @history << "********** GUESS ********** puzzle[#{r}][#{c}] set from #{element} to #{[element[0]]} in solve_for_two #{location}"
              clear_all

              @loop_once = 1
              return
            end
          end
        end
        temp_array = []
        temp_location = []
      end
    end
  end
end

