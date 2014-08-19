#require_relative 'puzzle.rb'


puzzle =  [0,0,0], [0,0,0], [0,0,0],
          [0,0,0], [0,0,0], [0,0,0],
          [0,0,0], [0,0,0], [0,0,0],

          [0,0,0], [1,2,3], [0,0,0],
          [0,0,0], [4,5,6], [0,0,0],
          [0,0,0], [7,8,9], [0,0,0],

          [0,0,0], [0,0,0], [0,0,0],
          [0,0,0], [0,0,0], [0,0,0],
          [0,0,0], [0,0,0], [0,0,0]



@row0 = puzzle[ 0] + puzzle[ 1] + puzzle[ 2]
@row1 = puzzle[ 3] + puzzle[ 4] + puzzle[ 5]
@row2 = puzzle[ 6] + puzzle[ 7] + puzzle[ 8]

@row3 = puzzle[ 9] + puzzle[10] + puzzle[11]
@row4 = puzzle[12] + puzzle[13] + puzzle[14]
@row5 = puzzle[15] + puzzle[16] + puzzle[17]

@row6 = puzzle[18] + puzzle[19] + puzzle[20]
@row7 = puzzle[21] + puzzle[22] + puzzle[23]
@row8 = puzzle[24] + puzzle[25] + puzzle[26]

col0 =  [puzzle[ 0][0]] << puzzle[ 3][0] << puzzle[ 6][0] << 
          puzzle[ 9][0] << puzzle[12][0] << puzzle[15][0] << 
          puzzle[18][0] << puzzle[21][0] << puzzle[24][0]

col1 =  [puzzle[ 0][1]] << puzzle[ 3][1] << puzzle[ 6][1] << 
          puzzle[ 9][1] << puzzle[12][1] << puzzle[15][1] << 
          puzzle[18][1] << puzzle[21][1] << puzzle[24][1]

col2 =  [puzzle[ 0][2]] << puzzle[ 3][2] << puzzle[ 6][2] << 
          puzzle[ 9][2] << puzzle[12][2] << puzzle[15][2] <<
          puzzle[18][2] << puzzle[21][2] << puzzle[24][2]


col3 =  [puzzle[ 1][0]] << puzzle[ 4][0] << puzzle[ 7][0] << 
          puzzle[10][0] << puzzle[13][0] << puzzle[16][0] << 
          puzzle[19][0] << puzzle[22][0] << puzzle[25][0]

col4 = [] <<
             puzzle[ 1][1] << puzzle[ 4][1] << puzzle[ 7][1] << 
             puzzle[10][1] << puzzle[13][1] << puzzle[16][1] << 
             puzzle[19][1] << puzzle[22][1] << puzzle[25][1]


col5 = [] << puzzle[ 1][2] << puzzle[ 4][2] << puzzle[ 7][2] << 
             puzzle[10][2] << puzzle[13][2] << puzzle[16][2] << 
             puzzle[19][2] << puzzle[22][2] << puzzle[25][2]


col6 = [] << puzzle[ 2][0] << puzzle[ 5][0] << puzzle[ 8][0] << 
             puzzle[11][0] << puzzle[14][0] << puzzle[17][0] << 
             puzzle[20][0] << puzzle[23][0] << puzzle[26][0]

col7 = [] << puzzle[ 2][1] << puzzle[ 5][1] << puzzle[ 8][1] << 
             puzzle[11][1] << puzzle[14][1] << puzzle[17][1] << 
             puzzle[20][1] << puzzle[23][1] << puzzle[26][1]

col8 = [] << puzzle[ 2][2] << puzzle[ 5][2] << puzzle[ 8][2] << 
             puzzle[11][2] << puzzle[14][2] << puzzle[17][2] << 
             puzzle[20][2] << puzzle[23][2] << puzzle[26][2]


box0 =  puzzle[ 0] + puzzle[ 3] + puzzle[ 6]
box1 =  puzzle[ 1] + puzzle[ 4] + puzzle[ 7]
box2 =  puzzle[ 2] + puzzle[ 5] + puzzle[ 8]

box3 =  puzzle[ 9] + puzzle[12] + puzzle[15]
box4 =  puzzle[10] + puzzle[13] + puzzle[16]
box5 =  puzzle[11] + puzzle[14] + puzzle[17]

box6 =  puzzle[18] + puzzle[21] + puzzle[24]
box7 =  puzzle[19] + puzzle[22] + puzzle[25]
box8 =  puzzle[20] + puzzle[23] + puzzle[26]

#p box4 = box4.shuffle

def print_puzzle
  p @row0
  p @row1
  p @row2
  p @row3
  p @row4
  p @row5
  p @row6
  p @row7
  p @row8
end

print_puzzle

# array = [0,3,6,9,12,15,18,21,24]
# total = 0
# p col0 =  array.each do |num|
#             total += puzzle[num,0]
#           end




# x = Puzzle.new puzzle

# p x.rows_valid?
# p x.columns_valid?
# p x.boxes_valid?

# p x.puzzle_valid?
