def update_value num

  if @puzzle[@array_element][@element_column] = 0 
    @puzzle[@array_element][@element_column] = num
    @step_thru_boxes = 1
    @wait = 1
    update_puzzle  #refreshes puzzle values
    update_arrays
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
#  total_numbers_set = box0.select { |val| val != 0 }
#  puts
  p "numbers that were set this loop: #{@numbers_set}"
#  p "total numbers in box that are set: #{total_numbers_set}"
  #p "numbers remaining to loop thru: #{@numbers - total_numbers_set}"
  p "numbers remaining in box: #{@box}"
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
  @flat = values.flatten
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
  #p "There are only #{@amt_remaining} number #{@lowest_remaining}'s left."
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


def starting_box
  p "Starting box"
  #p @box
  @box.each_slice(3){|a,b,c|p [a,b,c]}
  puts
end


def four_corners

  @start = 0
  @array_element = 0
  @element_column = 0

  generate @box_0_array

  @start = 2
  @array_element = 2

  generate @box_2_array

  @start = 18
  @array_element = 18

  generate @box_6_array

  @start = 20
  @array_element = 20

  generate @box_8_array


  @step_thru_boxes += 1
end
