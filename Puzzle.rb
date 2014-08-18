class Puzzle

  def initialize puzzle
    @puzzle = puzzle
  end

  def self.puzzle_valid?
    return true if rows_valid
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
    boxes_valid = true

    def self.valid? blah
      boxes_valid = false if blah != 45
    end

    def self.add_row_of_boxes
      valid? @box_left
      valid? @box_center
      valid? @box_right
      @box_left, @box_center, @box_right = 0, 0, 0
    end


    @box_left, @box_center, @box_right = 0, 0, 0

    @puzzle.each_with_index do |puz, index|
       @box_left += puz[0,3].inject {|x, y| x + y}
       @box_center += puz[3,3].inject {|x, y| x + y}
       @box_right += puz[6,3].inject {|x, y| x + y}
       
      if index == 2

        add_row_of_boxes

        # valid? box_left
        # valid? box_center
        # valid? box_right
        #@box_left, @box_center, @box_right = 0, 0, 0
      elsif index == 5
        add_row_of_boxes
        # valid? box_left
        # valid? box_center
        # valid? box_right
        # box_left, box_center, box_right = 0, 0, 0
      elsif index == 8
        add_row_of_boxes

        # valid? box_left
        # valid? box_center
        # valid? box_right
        # box_left, box_center, box_right = 0, 0, 0
      end
    end
    boxes_valid
  end

end


puzzle = [5,3,4,6,7,8,9,1,2],
         [6,7,2,1,9,5,3,4,8],
         [9,9,8,3,4,2,5,6,7],

         [8,5,9,7,6,1,4,2,3],
         [4,2,6,8,5,3,7,9,1],
         [7,1,3,9,2,4,8,5,6],

         [9,6,1,5,3,7,2,8,4],
         [2,8,7,4,1,9,6,3,5],
         [3,4,5,2,8,6,1,7,9]


x = Puzzle.new puzzle

p x.rows_valid?
p x.columns_valid?
p x.boxes_valid?

