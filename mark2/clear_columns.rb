def clear_columns

  (0..8).each do |col|
    @new_puz.each do |puz|
      if puz[col].size == 1
        num = puz[col][0]

        @new_puz.each do |p|
          unless p[col].size == 1
            p[col].delete (num) if p[col].include? (num)
          end
        end
      end
    end
  end
end