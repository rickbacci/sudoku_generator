
def solve_for_one_remaining_number_in_row ## works
  @loop_once = 0

  (0..8).each do |row_number|
    column = 0
    (1..9).each do |num|
      temp = []
      @new_puz[row_number].each do |row|
        unless row.is_a? Integer
          temp << row 
        end
      end
      flat = temp.flatten.count(num)
      #p "There are #{flat} #{num}'s remaining"
       if flat == 1
         @one_num_remaining = num  
       end

      @new_puz[row_number].each_with_index do |row, index|
        unless row.is_a? Integer
          if (row.include? @one_num_remaining) #&& @loop_once == 0
            @new_puz[row_number][index] = @one_num_remaining
            @loop_once = 1
            return
          end
        end
      end
    end
  end
end