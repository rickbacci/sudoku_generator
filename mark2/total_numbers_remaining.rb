def total_numbers_remaining?
  @number_totals_by_row = [0, 0, 0, 0, 0, 0, 0, 0, 0]
  
  row_num = 0
  
  @new_puz.each do |row|
    @temp = []
    row.each do |r|
      unless r.is_a? Integer
        @temp << r
      end

      flat = @temp.flatten
      (1..9).each do |num|
        total_num_in_row = flat.count(num)
        #p "There are a total of #{total_num_in_row}  #{num}'s in row #{row_num}"
        #p row_num
        @number_totals_by_row[row_num] += total_num_in_row
      end
      if row_num == 8
        row_num = 1
      else
        row_num += 1
      end
    end
  end
  @number_totals_by_row
end