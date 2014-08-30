
def clear_rows
  (0..8).each do |i|
    @new_puz[i].each do |p|

      if p.size == 1
        #p "found a #{p[0]} in row #{i}"
        num = p[0]

        @new_puz[i].each do |p|

          unless p.size == 1
            if p.include? (num)
              p.delete (num)
            end
          end
        end
      end
    end
  end
end