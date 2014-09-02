
def clear_rows
  (0..8).each do |row_number|
    @new_puz[row_number].each do |row_val|
       
      if row_val.is_a? Integer
        num = row_val
        #p "found a #{num} in row #{row_number}"
        @new_puz[row_number].each do |row_val|
          unless row_val.is_a? Integer
            row_val.delete num if row_val.include? num
          end
        end
      end
    end
  end
end