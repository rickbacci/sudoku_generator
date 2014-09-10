def solve_for_two(arrays)


  (1..9).each do |number|
    arrays.each_with_index do |array, row|
      array.each_with_index do |element, column|

        #total_number_remaining?(flat_array)
        if element.is_a?(Array) && @number_totals_remaining[ number - 1 ] > 1
          if (element.size == 2) && ((@loop_once == 0) && element.include?(number))
            if array.count(element) == 2
              new_val = element - [number]
              arrays[row][column] = new_val

              @history << "puzzle[#{row}][#{column}] set from #{element} to #{new_val} (matching pair found)"
              @loop_once = 1
              clear_all

              return
            end
            new_val = element - [number]
            arrays[row][column] = new_val
            
            @history << "********** GUESS ********** puzzle[#{row}][#{column}] set from #{element} to #{new_val} in solve_for_two"
            
            @loop_once = 1
            clear_all

            return
          end
        end
      end
    end
  end
end



# def solve_for_two(array)
#   solve_for_two_boxes
#   solve_for_two_columns
#   solve_for_two_rows
# end

# def solve_for_two_rows
#   solve_for_all (0..8), (0..8)
# end

# def solve_for_two_columns
#   solve_for_all (0..8), [0]
#   solve_for_all (0..8), [1]
#   solve_for_all (0..8), [2]

#   solve_for_all (0..8), [3]
#   solve_for_all (0..8), [4]
#   solve_for_all (0..8), [5]  

#   solve_for_all (0..8), [6]
#   solve_for_all (0..8), [7]
#   solve_for_all (0..8), [8]
# end

# def solve_for_two_boxes
#   solve_for_all (0..2), (0..2)
#   solve_for_all (0..2), (3..5)
#   solve_for_all (0..2), (6..8)

#   solve_for_all (3..5), (0..2)
#   solve_for_all (3..5), (3..5)
#   solve_for_all (3..5), (6..8)  

#   solve_for_all (6..8), (0..2)
#   solve_for_all (6..8), (3..5)
#   solve_for_all (6..8), (6..8)
# end








# def solve_for_all rows, columns
#   clear_all
#   @loop_once = 0
  
#   (1..9).each do |number|
#     rows.each do |row|
#       temp_array = []

#       columns.each do |column|
        
#         element = @new_puzzle[row][column]
       
#         temp_array << element

#         if temp_array.size == 9
#          # p "temp array"
#          # p temp_array
#           temp_array.each do |element|
#             if (element.is_a?(Array) && (element.size == 2) && element.include?(number))
#               if temp_array.count(element) == 2

#                 new_val = element - [number]
#                 @new_puzzle[row][column] = new_val
            
#                 #@new_puzzle[row][column] = element[0]
#                 @history << "puzzle[#{row}][#{column}] set from #{element} to #{element[0]} (matching pair found)"

#                 #p "element 0 is #{element[0]}"
#                 @loop_once = 1
#                 clear_all
#                 return
#               end
#             end
#           end
#         end

#         if (element.is_a?(Array) && element.include?(number)) && (@loop_once == 0) && element.size == 2

#           new_val = element - [number]
#           @new_puzzle[row][column] = new_val
          
#           @history << "********** GUESS ********** puzzle[#{row}][#{column}] set from #{element} to #{new_val} in solve_for_two"
#           clear_all

#           @loop_once = 1
#           return

#         end
#       end
#     end
#   end
# end

