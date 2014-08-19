class Puzzle

  def initialize puzzle
    @puzzle = puzzle
  end

  def puzzle_valid?
    if rows_valid? && columns_valid? && boxes_valid?
      return true
    else
      return false
    end
  end

  def rows_valid?
    rows_valid = true
    total = 0
    @puzzle.each do |p|
      total = p.inject {|x,y| x + y}
      rows_valid = false if total != 45
    end
    rows_valid
  end

  def columns_valid?
    cols_valid = true
    9.times do
      i = 0
      t = 0
      @puzzle.each do |puz|
        t += puz[i]
      end
      i += 1

      cols_valid = false if t != 45
    end
    cols_valid
  end

  def add_values values
    values.inject {|x, y| x + y }
  end

  def boxes_valid?
    @boxes_valid = true
    @box_left, @box_center, @box_right = 0, 0, 0


    def self.check_row_of_boxes *args
      args.each do |arg|
        @boxes_valid = false if arg != 45
      end
      @box_left, @box_center, @box_right = 0, 0, 0
    end

    @puzzle.each_with_index do |puz, index|
        @box_left += add_values puz[0, 3]
      @box_center += add_values puz[3, 3]
       @box_right += add_values puz[6, 3]
       # @box_left += puz[0,3].inject {|x, y| x + y}
       # @box_center += puz[3,3].inject {|x, y| x + y}
       # @box_right += puz[6,3].inject {|x, y| x + y}
       
      if index == 2
        check_row_of_boxes @box_left, @box_center, @box_right
      elsif index == 5
        check_row_of_boxes @box_left, @box_center, @box_right
      elsif index == 8
        check_row_of_boxes @box_left, @box_center, @box_right
      end
    end
    @boxes_valid
  end

  # def generate
  #   @puzzle.each do |puz|
  #     new_puz = puz.shuffle
  #     return new_puz if x.puzzle_valid?
  #   end
  # end

end


# puzzle = [5,3,4,6,7,8,9,1,0], # zero's where 2's are supposed to be
#          [6,7,0,1,9,5,3,4,8], # rows, columns, and blocks all return false
#          [1,9,8,3,4,0,5,6,7],

#          [8,5,9,7,6,1,4,0,3],
#          [4,0,6,8,5,3,7,9,1],
#          [7,1,3,9,0,4,8,5,6],

#          [9,6,1,5,3,7,0,8,4],
#          [0,8,7,4,1,9,6,3,5],
#          [3,4,5,0,8,6,1,7,9]


puzzle = [5,3,4,6,7,8,9,1,2], 
         [6,7,2,1,9,5,3,4,8],
         [1,9,8,3,4,2,5,6,7],

         [8,5,9,7,6,1,4,2,3],
         [4,2,6,8,5,3,7,9,1],
         [7,1,3,9,2,4,8,5,6],

         [9,6,1,5,3,7,2,8,4],
         [2,8,7,4,1,9,6,3,5],
         [3,4,5,2,8,6,1,7,9]

puzzle =  [1,2,3,4,5,6,7,8,9],
          [4,5,6,7,8,9,1,2,3],
          [7,8,9,1,2,3,4,5,6],
          [2,1,4,3,6,5,8,9,7],
          [3,6,5,8,9,7,2,1,4],
          [8,9,7,2,1,4,3,6,5],
          [5,3,1,6,4,2,9,7,8],
          [6,4,2,9,7,8,5,3,1],
          [9,7,8,5,3,1,6,4,2]


# 100000.times do
#   new_puz = puzzle.each do |puz|
#             puz.shuffle!
#           end

#   x = Puzzle.new new_puz
#   puts "valid puzzle found" if x.puzzle_valid?
  
# end


# x = Puzzle.new puzzle

#  p x.rows_valid?
#  p x.columns_valid?
#  p x.boxes_valid?

#  p x.puzzle_valid?

 
# p puzzle

