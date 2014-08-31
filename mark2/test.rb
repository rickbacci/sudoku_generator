require_relative 'empty_matrix'

require_relative 'clear_rows'
require_relative 'clear_boxes'
require_relative 'clear_columns'

require_relative 'set_box0'
require_relative 'set_box4'
require_relative 'set_box8'

set_box0
set_box4
set_box8

clear_rows
clear_boxes
clear_columns

size1 = 0
size2 = 0
size3 = 0
size4 = 0

search_for = 1
@new_puz.each do |puz|
  puz.each do |element|
    #p element.size
    if element.size == 1
      size1 += 1
    elsif element.size == 2
      size2 += 1
    elsif element.size == 3
      size3 += 1
    elsif element.size == 4
      size4 += 1
    end
  end
end

p "There were #{size1} elements with a length of 1"
p "There were #{size2} elements with a length of 2"
p "There were #{size3} elements with a length of 3"
p "There were #{size4} elements with a length of 4"


puts
@new_puz.each { |a| p a }

# p "box 0"
#     p self.send("box" << (0.to_s))

