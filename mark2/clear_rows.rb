
def clear_rows
  (0..8).each do |row_number|
    @new_puz[row_number].each do |row_val|
      if row_val.size == 1
        num = row_val[0]
        p "found a #{num} in row #{row_number}"
        @new_puz[row_number].each do |row_val|
          unless row_val.size == 1
            row_val.delete num if row_val.include? num
          end
        end
      end
    end
  end
end