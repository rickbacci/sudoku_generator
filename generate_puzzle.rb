require_relative 'empty_puzzle.rb'
require_relative 'puzzle_rows.rb'
require_relative 'puzzle_columns.rb'
require_relative 'puzzle_boxes.rb'
require_relative 'generate_left_and_right_center'
require_relative 'generate_top_and_bottom_center'




@x = [1,2,3,4,5,6,7,8,9]

def generate_center
  @x.shuffle!
  @puzzle[10] = @x[0,3]
  @puzzle[13] = @x[3,3]
  @puzzle[16] = @x[6,3]
end


  


def print_puzzle
  p row0, row1, row2, row3, row4, row5, row6, row7, row8
end


## row 0 box 0
def box0r0c0
  @x.shuffle - row0 - col0
end
#p box0r1c0

def box0r0c1
  @x.shuffle - row0 - col1
end
#p box0r1c1

def box0r0c2
  @x.shuffle - row0 - col2
end


## row 1 box 0
def box0r1c0
  @x.shuffle - row1 - col0
end

def box0r1c1
  @x.shuffle - row1 - col1
end

def box0r1c2
  @x.shuffle - row1 - col2
end


def box0r2c0
  @x.shuffle - row2 - col0
end

def box0r2c1
  @x.shuffle - row2 - col1
end

def box0r2c2
  @x.shuffle - row2 - col2
end


def box
  [box0r0c0, box0r0c1, box0r0c2,
   box0r1c0, box0r1c1, box0r1c2,
   box0r2c0, box0r2c1, box0r2c2]
end
 
generate_center
generate_left_and_right_center
generate_top_and_bottom_center

def gen2 box
  #@box = box

  def clear_array bx, num
    #p "this is in test method with #{num}"
    bx.each do |b|
      #p "remove #{num} and clear the rest of b #{b}"
      b.clear if b.include? num
      #b.delete(num)
    end
  end

  p box
  @numbers_set = []
  p @numbers_remaining = box.flatten

  array_element = 0
  element_column = 0

  @numbers = [1,2,3,4,5,6,7,8,9]
  
    
  box.each do |element|  ### [[9], [2], [3], [4], [6], [5], [7], [8], [1]] box elements
    puts "@puzzle[#{array_element}][#{element_column}] -- Begin"
    
    @numbers.each do |num|
      if ( @numbers_remaining.count(num) == 1 ) && ( element.include?(num) )
        p "only 1 #{num} remaining"
        @puzzle[array_element][element_column] = num
        @numbers_set << num
        @numbers -= [num]
        
        #removes num from 'box'
        clear_array box, num
        
        @numbers_remaining -= [num]
      end
      
    end
    #p element

    puts "@puzzle[#{array_element}][#{element_column}] -- End"

    if element_column == 2
        element_column = 0
      if array_element == 6
        array_element = 0
      else
        array_element += 3
      end
    else
      element_column += 1
    end

    p "numbers that were set: #{@numbers_set}"
    p "numbers remaining in box array: #{@numbers_remaining - @numbers_set}"
    p "numbers remaining to loop thru: #{@numbers}"
    p "numbers remaining in box: #{box}"
    #p "numbers remaining: #{@numbers_remaining}"
  end

  if box.flatten == []
    p "All done"
  else
    gen2 box 
  end
end

#gen2 box

gen2 [[9],[2,3],[3],[4],[6],[5],[7],[8],[1]]
print_puzzle
puts "---------------------------------------------------------------------------------------------"
gen2 [[1],[8],[7],[5],[6],[4],[3],[3,2],[9]] ## working with .clear instead of .pop
print_puzzle
puts "---------------------------------------------------------------------------------------------"
#gen2 [[2],[9,4,5],[3,7,8],[4,1,6],[5,6],[1],[7,2,4],[1,8],[5,3]]




#gen2 [[1],[8],[7],[5],[6],[4],[3,2],[2,3],[9]] ## will not work until i use recursion thru all blocks again



