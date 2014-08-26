require_relative 'empty_puzzle.rb'

require_relative 'puzzle_rows.rb'
require_relative 'puzzle_columns.rb'
require_relative 'puzzle_boxes.rb'

require_relative 'generate_center'
require_relative 'generate_left_and_right_center'
require_relative 'generate_top_and_bottom_center'

require_relative 'box_0'

require_relative 'print_puzzle'


def gen2 box


  def clear_array bx, num
    p "@puzzle[#{@array_element}][#{@element_column}] set to num: #{num}"
    #p "this is in test method with #{num}"

    p "box[#{@i}] set to empty?: #{[]}"  ### not right? Shows box element?
    bx[@i] = []

    bx.each do |b|
      if b.include? num                                       
        #p "delete the #{num}'s out of b #{b}"
        b.delete(num)
        #p "b#{b} after deleting #{num}"
      end
    end
    puts
    p "@box after all #{num}'s deleted"
    p bx
  end


  p "Starting box"
  p @box = box
  puts
  @array_element = 0
  @element_column = 0
  @numbers = [1,2,3,4,5,6,7,8,9]
  @i = 0
  @numbers_set = []

  @box.each do |element|

    @test = @box.flatten
    puts "@puzzle[#{@array_element}][#{@element_column}] -- Begin"

    if element != []
      @numbers.each do |num|
        # p "@box element: #{element}"
        # #p "num: #{num}"
        # @test = @box.flatten

        if ( element.include?(num) )
          p "@box element: #{element}"
          #p "num: #{num}"
          @test = @box.flatten

          p "Checking number: #{num}...there were #{@test.count(num)} found"

          if ( @test.count(num) == 1 ) && ( element.include?(num) )
            #p "num: #{num}"
            p "number set because only 1: #{num} remaining and it exists in this element"
            (@puzzle[@array_element][@element_column] = num) if (@puzzle[@array_element][@element_column] = 0)
            update_puzzle

            @numbers_set << num
            @numbers -= [num]
            
            #removes num from 'box'
            clear_array(@box, num)
            break ## needs to stay!

          elsif (element.length == 1) && ( element.include?(num) )#(element.empty? == false)
            #p "num: #{num}"
            p "element: #{element} set because element had '(array.length == 1) && (empty? == false)'"
            (@puzzle[@array_element][@element_column] = num) if (@puzzle[@array_element][@element_column] = 0)
            update_puzzle
            @numbers_set << num

            @numbers -= [num]

            
             #removes num from 'box'
            clear_array(@box, num)

            break ## needs to stay!
          else
            #p "NOTHING SET!"
          end
        else
          #p  "num doesn't exist in this element"

        end
      end
    else
    p 'already set'
    end

    #puts "@puzzle[#{@array_element}][#{@element_column}] -- End"

    if @element_column == 2
        @element_column = 0
      if @array_element == 6
        @array_element = 0
      else
        @array_element += 3
      end
    else
      @element_column += 1
    end
    puts
    p "numbers that were set this loop: #{@numbers_set}"

    total_numbers_set = box0.select { |val| val != 0 }
    p "total numbers in box that are set: #{total_numbers_set}"

    p "numbers remaining to loop thru: #{@numbers - total_numbers_set}"
    p "numbers remaining in box: #{@box}"
    puts "@puzzle[#{@array_element}][#{@element_column}] -- End"
    puts
    @numbers_set = []
    @i += 1
  end

  if @box.flatten == []
    p "All done!"
  else
    #gen2 box 
  end
end

# generate_center
# #generate_box1
# generate_left_and_right_center
# generate_top_and_bottom_center
#gen2 box

#gen2 [[9,1],[2,9],[3],[4],[5],[6],[7],[8],[1]]
#gen2 [[9],[2,3],[3],[4],[6],[5],[7],[8],[1]]
#print_puzzle
puts "---------------------------------------------------------------------------------------------"
# gen2 [[1],[8],[7],[5],[6],[4],[3],[3,2],[9]] ## working with .clear instead of .pop
# print_puzzle
# puts "---------------------------------------------------------------------------------------------"

# gen2 [[1],[3,8],[7],[6,5],[6],[4],[3],[3,2],[9,3]]
# print_puzzle
# puts "---------------------------------------------------------------------------------------------"

#gen2 [[2],[9,4,5],[3,7,8],[4,1,6],[5,6],[1],[7,2,4,5],[1,8],[5,3]] ## needs logic still
#gen2 [[2], [], [3, 7, 8], [4, 1, 6], [5, 6], [1], [7, 2, 4], [1, 8], [5, 3]]

# gen2 [[2],[9,4,5],[3,7,8],[4,1,6],[5,6],[1],[7,3,8,2,4,5],[8,1,5],[5,3]] ## needs logic still
# gen2 [[], [], [3, 7, 8], [4], [], [], [7, 3, 8, 4, 5], [8, 5], [5, 3]]
# #gen2 [[], [], [7], [], [], [], [7,6], [], []]



#gen2 [[2, 8, 4, 6], [2, 4, 9, 3], [8, 6, 3, 9], [5, 1, 6], [7, 1, 3, 9], [9, 3, 7, 5, 6], [1, 8, 4, 5, 2], [2, 1, 4, 7], [7, 8, 5]]
#gen2 [[4, 6], [4, 9], [6, 9], [], [], [9, 7, 5, 6], [4, 5], [], []]

# gen2 [[1,4,7,8], [1,3,9], [3,4,7,8,9], 
#       [1,2,5,8], [1,2,3,5,6], [3,6,7],
#       [2,4,5,8], [2,5,6,9], [4,6,8,9]]



#gen2 box_0_array
# gen2  [[1,2,3], [7,8,9], [1,2,3,7,8,9],
#        [1,2,3,4,5,6], [4,5,6], [1,2,3],
#        [4,5,6], [4,5,6,7,8,9], [7,8,9]]

## places single element array with numbers in that array in other elements
# gen2  [[1], [7,8,9], [1,2,3,7,8,9],
#         [1,2,3,4,5,6], [4,5,6], [1,2,3],
#         [4,5,6], [4,5,6,7,8,9], [7,8,9]]

# places 2 single element arrays
# gen2  [[1], [7,8,9], [1,2,3,7,8,9],
#         [1,2,3,4,5,6], [4,5,6], [1,2,3],
#         [4,5,6], [4,5,6,7,8,9], [7]]

# should place 2 single element arrays and a single remaining number
gen2  [[1], [7,8], [1,2,3,7,8,9],
        [1,2,3,4,5,6], [4,5,6], [1,2,3],
        [4,5,6], [4,5,6,7,8], [7]]
puts
puts
puts
puts
puts
p "IN 2ND PASS!!!"
puts
puts
puts
puts 
puts

gen2 [[], [8], [], [2, 3, 4, 5, 6], [4, 5, 6], [2, 3], [4, 5, 6], [4, 5, 6, 8], []]
puts

#print_puzzle
puts "---------------------------------------------------------------------------------------------"


#gen2 [[1],[8],[7],[5],[6],[4],[3,2],[2,3],[9]] ## will not work until i use recursion thru all blocks again

p @puzzle[0..2]
p @puzzle[3..5]
p @puzzle[6..8]
puts
p @puzzle[9..11]
p @puzzle[12..14]
p @puzzle[15..17]
puts
p @puzzle[18..20]
p @puzzle[21..23]
p @puzzle[24..26]
puts "---------------------------------------------------------------------------------------------"

# p box0r0c0
# p box0r0c1
# p box0r0c2

# p box0r1c0
# p box0r1c1
# p box0r1c2

# p box0r2c0
# p box0r2c1
# p box0r2c2



##### box_0_array WILL BE DIFFERENT THAN @box NOW!!! #####
# @box.each_with_index do |array, index|
#   p "Index: #{index} Array: #{array}" 
# end





  
      # elsif ( @test.count(num) == 2 ) && ( element.include?(num) ) && element.length == 2
      #   if (@puzzle[array_element][element_column] = 0)
      #     p @test
      #     p "number in 2nd option #{num}"
      #     p "This element #{element} has a length of 2 with only 2 #{num}'s left"
      #     (@puzzle[array_element][element_column] = num) 
      #     @numbers_set << num
      #     @numbers -= [num]
      #   end
      #   #removes num from 'box'
      #   clear_array(@box, num)
      # elsif ( @test.count(num) == 4 ) && ( element.include?(num) ) && element.length == 3
      #   if (@puzzle[array_element][element_column] = 0)
      #     p @test
      #     p "number in 3rd option #{num}"
      #     p "This element #{element} has a length of 3 with only 3 #{num}'s left"
      #     (@puzzle[array_element][element_column] = num) if (@puzzle[array_element][element_column] = 0)
      #     @numbers_set << num
      #     @numbers -= [num]
      #   end
      #   #removes num from 'box'
      #   clear_array(@box, num)
      # elsif ( @test.count(num) == 4 ) && ( element.include?(num) ) && element.length == 4
      #   p @test
      #   p "number in 4th option #{num}"
      #   p "This element #{element} has a length of 4 with only 4 #{num}'s left"
      #   @puzzle[array_element][element_column] = num
      #   @numbers_set << num
      #   @numbers -= [num]
        
      #   #removes num from 'box'
      #   clear_array(@box, num)
