
def solve_for_one(array)

  solve_for_one_boxes
  solve_for_one_columns
  solve_for_one_rows
end


def build_flat_array(array, rows, columns)
  flat_array = []

  rows.each do |row|
    columns.each do |col|
      flat_array << @new_puzzle[row][col] if @new_puzzle[row][col].is_a?(Array)
    end
  end
  flat_array = flat_array.flatten
end

def solve_for_one_rows
  solve_for_all (0..8), (0..8)
  solve_for_all (0..8), (0..8)
  solve_for_all (0..8), (0..8)

  solve_for_all (0..8), (0..8)
  solve_for_all (0..8), (0..8)
  solve_for_all (0..8), (0..8) 

  solve_for_all (0..8), (0..8)
  solve_for_all (0..8), (0..8)
  solve_for_all (0..8), (0..8)
end

def solve_for_one_columns
  solve_for_all (0..8), [0]
  solve_for_all (0..8), [1]
  solve_for_all (0..8), [2]

  solve_for_all (0..8), [3]
  solve_for_all (0..8), [4]
  solve_for_all (0..8), [5]  

  solve_for_all (0..8), [6]
  solve_for_all (0..8), [7]
  solve_for_all (0..8), [8]
end

def solve_for_one_boxes
  solve_for_all (0..2), (0..2)
  solve_for_all (0..2), (3..5)
  solve_for_all (0..2), (6..8)

  solve_for_all (3..5), (0..2)
  solve_for_all (3..5), (3..5)
  solve_for_all (3..5), (6..8)  

  solve_for_all (6..8), (0..2)
  solve_for_all (6..8), (3..5)
  solve_for_all (6..8), (6..8)
end


def solve_for_all rows, columns
  clear_all
  @loop_once = 0
  

  flat_array = build_flat_array(@new_puzzle, rows, columns)

  (1..9).each do |num|
    rows.each do |row|

      columns.each do |col|

        element = @new_puzzle[row][col]
       
        if element.is_a?(Array) && element.include?(num)
          
          if element.size == 1

            @new_puzzle[row][col] = num
            @history << "puzzle[#{row}][#{col}] set from #{element} to #{element[0]} in solve_for_one_boxes(arr.size == 1)"
            clear_all

          elsif flat_array.count(num) == 1

            @new_puzzle[row][col] = num
            @history << "puzzle[#{row}][#{col}] set from #{element} to #{num} in solve_for_one_boxes(one remaining)"
            clear_all

          end
        end
      end
    end
  end
end


