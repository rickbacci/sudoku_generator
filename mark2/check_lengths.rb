@size1 = 0
@size2 = 0
@size3 = 0
@size4 = 0

def check_lengths
  @size1, @size2, @size3, @size4 = 0,0,0,0

#search_for = 1
  @new_puz.each do |puz|
    puz.each do |element|
      #p element.size
      if element.size == 1
        @size1 += 1
      elsif element.size == 2
        @size2 += 1
      elsif element.size == 3
        @size3 += 1
      elsif element.size == 4
        @size4 += 1
      end
    end
  end

  p "There were #{@size1} elements with a length of 1"
  p "There were #{@size2} elements with a length of 2"
  p "There were #{@size3} elements with a length of 3"
  p "There were #{@size4} elements with a length of 4"
end