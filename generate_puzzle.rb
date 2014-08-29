require_relative 'empty_puzzle.rb'

require_relative 'puzzle_rows.rb'
require_relative 'puzzle_columns.rb'
require_relative 'puzzle_boxes.rb'

require_relative 'generate_center'
require_relative 'generate_left_and_right_center'
require_relative 'generate_top_and_bottom_center'

require_relative 'box_0'
require_relative 'box_2'
require_relative 'box_6'
require_relative 'box_8'


require_relative 'solve_for_one'
require_relative 'solve_for_two'
require_relative 'solve_for_three'
require_relative 'solve_for_four'

require_relative 'print_puzzle'

  
  





def update_value num

  if @puzzle[@array_element][@element_column] = 0
    @puzzle[@array_element][@element_column] = num
  end

  @numbers_set << num
  @numbers -= [num]
end


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
  puts
end
  

def output_info
  puts
  p "numbers that were set this loop: #{@numbers_set}"

  total_numbers_set = box0.select { |val| val != 0 }
  p "total numbers in box that are set: #{total_numbers_set}"

  p "numbers remaining to loop thru: #{@numbers - total_numbers_set}"
  p "numbers remaining in box: #{@box}"
  puts "@puzzle[#{@array_element}][#{@element_column}] -- End"
  puts
end


def find_lengths box
  @element_lengths = []

  box.each do |box|
    @element_lengths << box.length
  end

  @starting_lengths ||= @element_lengths
  @element_lengths
end

def fewest_remaining? values
  p @flat = values.flatten
  @lowest_remaining ||= 0
  
  (1..9).each do |num| 
    if num == 1
      @lowest_remaining = num
      @amt_remaining = @flat.count(num)
    elsif (@flat.count(num) < @amt_remaining)
      @lowest_remaining = num

      @amt_remaining = @flat.count(num)
    end
  end
  p "There are only #{@amt_remaining} number #{@lowest_remaining}'s left."
  ## @lowest remaining is the actual number
  @lowest_remaining ######################################################### check this!!!
  ## @amt_remaining is how many are remaining
  @amt_remaining

end

def box_location
  if @element_column == 2
      @element_column = 0
    if @start == 0
      if @array_element == 6
        @array_element = 0
      else
        @array_element += 3
      end
    elsif @start == 2
      if @array_element == 8
        @array_element = 2
      else
        @array_element += 3
      end
    elsif @start == 18
      if @array_element == 24
        @array_element = 18
      else
        @array_element += 3
      end
    elsif @start == 20
      if @array_element == 26
        @array_element = 20
      else
        @array_element += 3
      end
    end
  else
    @element_column += 1
  end
end

generate_center
generate_left_and_right_center
generate_top_and_bottom_center

def starting_box
  p "Starting box"
  p @box
  puts
end

def generate box
  @box = box

  @numbers = [1,2,3,4,5,6,7,8,9]
  @i = 0
  @numbers_set = []

  find_lengths box

   @few = fewest_remaining? box

    p "fewest remaining"
    p @few
  p "*******************************************************************************************"
  starting_box

  if @element_lengths.include? 1 || @few == 0
    solve_for_one box
  elsif @element_lengths.include? 2 || @few == 2
    
    solve_for_two box
  elsif @element_lengths.include? 3
    
    solve_for_three box
  elsif @element_lengths.include? 4
    
    solve_for_four box
  end

  @blah ||= 1
  if @box.flatten == []
    p "All done!"
    p "starting lengths were: #{@starting_lengths}"
    p "There are only #{@amt_remaining} number #{@lowest_remaining}'s left."
  else
    @blah += 1
    p "not done!"
    p "inside: #{@blah}"
    p "starting lengths were: #{@starting_lengths}"
    p "There are only #{@amt_remaining} number #{@lowest_remaining}'s left."

    if @blah < 10 ## escape loop
      p 'in recursion'
      generate box
    else
      "terminated for error"
    end
  end
end

@start = 0
@array_element = 0
@element_column = 0

generate box_0_array

 @start = 2
 @array_element = 2

 generate box_2_array

 @start = 18
 @array_element = 18

 generate box_6_array

  @start = 20
  @array_element = 20

 generate box_8_array





#print_puzzle
puts "---------------------------------------------------------------------------------------------"
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
