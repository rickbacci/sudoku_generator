def clear_columns

  (0..8).each do |col|
    @new_puz.each do |puz|
      if puz[col].is_a? Integer
        num = puz[col]

        @new_puz.each do |p|
          unless p[col].is_a? Integer
            p[col].delete (num) if p[col].include? (num)
          end
        end
      end
    end
  end
end