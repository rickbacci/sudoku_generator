def solve_for_two box

  @box.each do |element|
    break if @wait == 1


    @test = @box.flatten
    puts "@puzzle[#{@array_element}][#{@element_column}] -- Begin"

    if element != []
      @numbers.each do |num|
      # p "@box element: #{element}"
      # #p "num: #{num}"
      # @test = @box.flatten

        if ( element.include?(num) )
          #p "@box element: #{element}"
          #p "num: #{num}"
          @test = @box.flatten

          #p "Checking number: #{num}...there were #{@test.count(num)} found"

          if ( @test.count(num) == 2 ) && ( element.include?(num) )
            #p "num: #{num}"
            p "number set because only 2: #{num} remaining and it exists in this element"

            update_value num  # sets value in @puzzle
            #update_puzzle  #refreshes puzzle values
            clear_array(@box, num)  #removes num from 'box'
            #output_info

            break ## needs to stay!

          elsif (element.length == 2) && ( element.include?(num) )
            #p "num: #{num}"
            p "element: #{element} set because element had '(array.length == 2) && (empty? == false)'"

            if true #box0.include? num == false
            update_value num  # sets value in @puzzle
            #update_puzzle  #refreshes puzzle values
            clear_array(@box, num)  #removes num from 'box'
            #output_info
            end

            break ## needs to stay!
            #p "NOTHING SET!"
          end
        else
          #p  "num doesn't exist in this element"
        end
      end ## end of @numbers loop
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
