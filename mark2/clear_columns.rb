
def clear_columns

  columns = [@col0, @col1, @col2, @col3, @col4, @col5, @col6, @col7, @col8]

  i = 0 # only for testing

  columns.each do |col|
    col.each do |c|

      if c.size == 1

        num = c[0]
        #p "found a #{c[0]} in column #{i}"

        col.each do |c|
          
          unless c.size == 1
            c.delete (num) if c.include? (num)
          end
        end
      end
    end
    i += 1 # only for testing
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