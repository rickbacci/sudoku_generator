
def clear_columns

    columns = [@col0, @col1, @col2, @col3, @col4, @col5, @col6, @col7, @col8]

  (0..8).each do |i|
    columns.each do |col|
      #p "this is column #{i}"
      #p col
      col.each do |c|
        #p 'in c'
        #p c
        if c.size == 1
          num = c[i]
          p "found a #{c[0]} in column #{i}"
        end
      end
    end
  end
end





  ###---clears out columns
  # @new_puz.each do |puz|
    
  #   #p 'column'
  #   #p puz[0]
  #   if puz[0].size == 1
  #     @num = puz[0][0]

  #     #p 'inside if'
  #     @new_puz.each do |p|
  #       unless p[0].size == 1
  #         #p 'inside unless'
  #         #p p
  #         #p p.size
          
  #         if p[0].include? (@num)
  #           p[0].delete (@num)
  #         end
  #       end
  #     end
  #   end
  # end