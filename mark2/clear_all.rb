
def clear_all
  clear_rows
  #clear_columns
  #clear_boxes
end

# def delete_values value, num
#   value.each do |row_val|
#     unless row_val.is_a? Integer
#       row_val.delete num if row_val.include? num
#     end
#   end
# end

def clear_rows

  set_row_variables

  @rows = [@row0, @row1, @row2, @row3, @row4, @row5, @row6, @row7, @row8]

  
  # (0..8).each do |row_number|
  #   @rows.each do |row|

  #     row.each do |r| 
  #       p row
  #       if r.is_a? Integer
  #         num = r

  #         delete_values row, num
  #         # box.each do |p|
  #         #   unless p.is_a? Integer
  #         #     p.delete (num) if p.include? (num)
  #         #   end
  #         # end
  #       end
  #     end
  #   end
  # end






  @rows.each_with_index do |row_number, index|
    row_number.each do |element|
      p element
      if element.is_a?(Integer)
        number = element

        row_number.each do |value|
          unless value.is_a?(Integer)
            value.delete(number) if value.include?(number)
          end
        end
      end
    end
  end



  # (0..8).each do |row|                                     
  #   @new_puz[row].each do |row_val|                       
  #     if row_val.is_a? Integer
  #       num = row_val

  #       delete_values @new_puz[row], num
        
  #     end
  #   end
  # end
end


def clear_columns

  set_column_variables

  columns = [@col0, @col1, @col2, @col3, @col4, @col5, @col6, @col7, @col8]


  (0..8).each do |column|
    column_array = []
    @new_puz.each do |row|
      column_array << row[column]
    end

    @new_puz.each do |row|
      if row[column].is_a? Integer
        num = row[column]
        @new_puz.each do |r|
          unless r[column].is_a? Integer
            r[column].delete (num) if r[column].include? (num)
          end
        end
      end
    end
  end
end


def clear_boxes
  
  set_box_variables

  @boxes = [@box0, @box1, @box2, @box3, @box4, @box5, @box6, @box7, @box8]
  
  (0..8).each do |box_number|
    @boxes.each do |box|
      box.each do |b| 
        if b.is_a? Integer
          num = b

          delete_values box, num
          # box.each do |p|
          #   unless p.is_a? Integer
          #     p.delete (num) if p.include? (num)
          #   end
          # end
        end
      end
    end
  end
end

