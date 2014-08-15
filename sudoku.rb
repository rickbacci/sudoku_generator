class Sudoku
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


array = []
i = 0

9.times do
  total = 0

  puzzle.each do |puz|
    #p puz[i]
    total += puz[i]
    total
  end
  array << total
  i += 1
end

p array ## checks columns



array = []

  puzzle.each do |puz|
    total = 0  

    total = puz.inject {|x, y| x + y }
    array << total
  end


p array ## checks rows



### add box 1 (top left)



box1 = []
box2 = []
box3 = []

  puzzle.each_with_index do |puz, index|

    total1 = puz[0,3].inject {|x, y| x + y }
    total2 = puz[3,3].inject {|x, y| x + y }
    total3 = puz[6,3].inject {|x, y| x + y }

    box1 << total1 if index < 3
    box2 << total2 if index < 3
    box3 << total3 if index < 3
  end


p box1.inject {|x,y| x + y}
p box2.inject {|x,y| x + y}
p box3.inject {|x,y| x + y}




end


    





