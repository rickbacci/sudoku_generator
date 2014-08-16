class Puzzle

puzzle = 
    [5,3,4,6,7,8,9,1,2],
    [6,7,2,1,9,5,3,4,8],
    [1,9,8,3,4,2,5,6,7],

    [8,5,9,7,6,1,4,2,3],
    [4,2,6,8,5,3,7,9,1],
    [7,1,3,9,2,4,8,5,6],

    [9,6,1,5,3,7,2,8,4],
    [2,8,7,4,1,9,6,3,5],
    [3,4,5,2,8,6,1,7,9]

# puzzle =  #### bad puzzle
#     [3,5,4,6,7,8,9,1,2],
#     [6,7,2,1,9,5,3,4,8],
#     [1,9,5,3,4,2,5,6,7],

#     [8,5,9,7,6,1,4,2,3],
#     [4,2,6,8,5,3,7,9,1],
#     [7,1,3,9,2,4,8,5,6],

#     [9,6,1,5,3,7,2,8,4],
#     [2,8,7,4,1,9,6,3,5],
#     [3,4,5,2,8,6,1,7,9]


def self.total? array
  array.inject {|x, y| x + y }
end

#p valid? [5,3,4,6,7,8,9,1,2]

array_of_columns = []
i = 0

9.times do
  total = 0

  puzzle.each do |puz|
    #p puz[i]
    total += puz[i]
    total
  end
  array_of_columns << total
  i += 1
end
#p array_of_columns

array_of_rows = []

  puzzle.each do |puz|
    total = 0  

    total = total? puz
    array_of_rows << total
  end
#p array_of_rows



  array_of_boxes = []
  total_left, total_center, total_right = [], [], []

  def self.combine_arrays array_of_boxes, total_left, total_center, total_right
    array_of_boxes << total_left.flatten << total_center.flatten << total_right.flatten
  end

  puzzle.each_with_index do |puz, index|

    total_left   << puz[0,3]
    total_center << puz[3,3]
    total_right  << puz[6,3]

    if index == 2
      combine_arrays array_of_boxes, total_left, total_center, total_right
      total_left, total_center, total_right = [], [], []
    elsif index == 5
      combine_arrays array_of_boxes, total_left, total_center, total_right
      total_left, total_center, total_right = [], [], []
    elsif index == 8
      combine_arrays array_of_boxes, total_left, total_center, total_right
      total_left, total_center, total_right = [], [], []
    end
  end




#p array_of_boxes
total_of_boxes = []

  array_of_boxes.each do |box|
    total = box.inject {|x,y| x + y}
    total_of_boxes << total
  end

p array_of_columns
p array_of_rows
p total_of_boxes

 end   





