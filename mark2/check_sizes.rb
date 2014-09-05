
def check_sizes
  @solved, @size1, @size2, @size3, @size4, @size5, @size6 = 0, 0, 0, 0, 0, 0, 0


  @new_puz.each do |row|
    row.each do |element|
      if element.size == 1 
        @size1 += 1
      elsif element.size == 2
        @size2 += 1
      elsif element.size == 3
        @size3 += 1
      elsif element.size == 4
        @size4 += 1
      elsif element.size == 5
        @size5 += 1
      elsif element.size == 6
        @size6 += 1
      else
        @solved += 1
      end
    end
  end

  lengths = [@size1, @size2, @size3, @size4, @size5, @size6]

  #p "#{@solved} numbers have been solved"
  #puts

  lengths.each_with_index do |value, index|
    #p "There are #{value} elements with a length of #{ index + 1 }"
  end
end