def solve_for_four box
  
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

          

          if (element.length == 4) && ( element.include?(num) )
            #p "num: #{num}"
            p "element: #{element} set because element had '(array.length == 4) && (empty? == false)'"

            update_value num # sets value in @puzzle
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

    box_location
    output_info
    @numbers_set = []
    @i += 1
  end
end