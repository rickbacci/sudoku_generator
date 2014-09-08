


def set_boxes
  set_box((0..2), (0..2))
  set_box((3..5), (3..5))
  set_box((6..8), (6..8))
end

def set_box(rows, columns)

  numbers = [1,2,3,4,5,6,7,8,9].shuffle!
  shuffled_numbers = []

  rows.each do |row|
    columns.each do |col|
      shuffled_numbers << @new_puzzle[row][col] = numbers.pop
    end
  end
  shuffled_numbers
end
