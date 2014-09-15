
def solve_for_ones(array, rows, columns, location, section)
  clear_all
  @loop_once = 0

  flat_array = build_flat_array(array, rows, columns)

  (1..9).each do |num|
    rows.each do |row|
      columns.each do |column|

        element = array[row][column]
        if element.is_a?(Array) && element.include?(num)
          if section == :box2
            if (0..2).include?(row) && (6..8).include?(column)
              if element.size == 1
                array[row][column] = num
                @history << "solve box2 [#{row}][#{column}] set from #{element} to #{num} in" +
                            " solve_for_one #{location}(arr.size == 1)"
                @loop_once = 1
                clear_all
                return
              elsif flat_array.count(num) == 1
                array[row][column] = num
                @history << "solve box2 [#{row}][#{column}] set from #{element} to #{num} in " +
                            "solve_for_one  #{location}(one remaining)"
                @loop_once = 1
                clear_all
                return
              end
            end
          #else #### has to be gone.
            if element.size == 1
              array[row][column] = num
              @history << "********** puzzle[#{row}][#{column}] set from #{element} to #{num} in " +
                          "solve_for_one #{location}(arr.size == 1)"
              @loop_once = 1
              clear_all
              return
            elsif flat_array.count(num) == 1
              array[row][column] = num
              @history << "********** puzzle[#{row}][#{column}] set from #{element} to #{num} in " +
                          "solve_for_one  #{location}(one remaining)"
              @loop_once = 1
              clear_all
              return
            end
          end ## end of box2
        end
      end
    end
  end
end

                # @done = true
                # set_variables
                # box2.each do |box|
                #   @done = false if box.is_a?(Array)
                # end

                # section = nil if @done == false


                #section = nil if box2.inject { |sum, num| sum + num } == 45



                #section = nil if box2.inject { |sum, num| sum + num } == 45
                #  @done = true
                #  set_variables
                # box2.each do |box|
                #   @done = false if box.is_a?(Array)
                # end

                # section = nil if @done == false
