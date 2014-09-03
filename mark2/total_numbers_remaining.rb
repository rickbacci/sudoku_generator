def total_numbers_remaining?
  @number_totals_by_row = [0, 0, 0, 0, 0, 0, 0, 0, 0]

  temp_array = []

  @new_puz.each do |row|
    row.each do |element|
      unless element.is_a? Integer
        temp_array << element
        (1..9).each_with_index do |num, index|
          #p element
          if element.flatten.include? num
            #p "element included"
            @number_totals_by_row[index] += 1
          end
        end
      end
    end
  end
  @number_totals_by_row.each_with_index do |number, index|
    p "There are #{number} #{index}'s remaining in the puzzle"
  end
end