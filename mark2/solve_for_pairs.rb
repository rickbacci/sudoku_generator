def solve_for_pairs(array, rows, columns, location, section)
  clear_all(array)
  @loop_once = 0


  rows.each do |row|
    temp_array = []
    temp_location = []
    columns.each do |column|

      element = array[row][column]
      temp_location << [row, column]
      temp_array << element
      
      if (temp_array.size % 9) == 0 # we have one row, column, or box to check

        temp_array.each_with_index do |element, index|

          if element.size == 2 && @loop_once == 0
            if section == :box2
              if (0..2).include?(row) && (6..8).include?(column)
                if temp_array.count(element) == 2
                  r = temp_location[index][0]
                  c = temp_location[index][1]
                  array[r][c] = [element[0]] 

                  @loop_again = 0 #### do i need?
                  @history << "solve #{section} [#{r}][#{c}] set from #{element} to" + 
                              " #{[element[0]]} (matching pair) from #{location}"
                  @loop_once = 1
                  clear_all(array)
                  return
                end
              end
            end # end box2
          end 
        end
      end
    end
    temp_array = []
    temp_location = []
  end
end





# p array = 
# [7, [2, 6], 5, [2, 6, 7], [1, 2], [1, 7, 8, 9], [1, 2], [1, 2, 3, 4, 9], [3, 6]]
# puts

# array.each_with_index do |element, index|
#   if element.size == 2 && array.count(element) == 2 ## (pair)
#     pair = element
#     array[index] = pair[0]

#     array.each_with_index do |arr, index|
#       unless arr.is_a?(Integer)
#         if arr == element
#           array[index] = pair[1]
#         else
#           array[index] -= element.flatten
#         end
#       end
#     end
#   end
# end
# p array


