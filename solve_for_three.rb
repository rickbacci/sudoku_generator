def solve_for_three box


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
            p "number set because only 3: #{num} remaining and it exists in this element"
            
            update_value num  # sets value in @puzzle
            update_puzzle  #refreshes puzzle values
            clear_array(@box, num)  #removes num from 'box'
            #output_info

            break ## needs to stay!

          elsif (element.length == 3) && ( element.include?(num) )
            #p "num: #{num}"
            p "element: #{element} set because element had '(array.length == 1) && (empty? == false)'"

            update_value num  # sets value in @puzzle
            update_puzzle  #refreshes puzzle values
            clear_array(@box, num)  #removes num from 'box'
            #output_info

            break ## needs to stay!

          else
            #p "NOTHING SET!"
          end
        else
          #p  "num doesn't exist in this element"
        end
      end
    else
      p "Value already set to: #{@puzzle[@array_element][@element_column]}"
    end

    puts "@puzzle[#{@array_element}][#{@element_column}] -- End"
    puts

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
    output_info
    @numbers_set = []
    @i += 1
  end
  if @box.flatten == []
    p "All done!"
  else
    #gen2 box 
  end
end