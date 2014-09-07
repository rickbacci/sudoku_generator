
def clear_all
  clear_rows
  clear_columns
  clear_boxes
end



def clear_rows

  set_row_variables

  @rows = [@row0, @row1, @row2, @row3, @row4, @row5, @row6, @row7, @row8]

  @rows.each do |row_number|
    row_number.each do |element|

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
end


def clear_columns

  set_column_variables

  @columns = [@col0, @col1, @col2, @col3, @col4, @col5, @col6, @col7, @col8]

  @columns.each do |col_number|
    col_number.each do |element|

      if element.is_a?(Integer)
        number = element

        col_number.each do |value|
          unless value.is_a?(Integer)
            value.delete(number) if value.include?(number)
          end
        end
      end
    end
  end
end


def clear_boxes
  
  set_box_variables

  @boxes = [@box0, @box1, @box2, @box3, @box4, @box5, @box6, @box7, @box8]

  @boxes.each do |box_number|

    box_number.each do |element|

      if element.is_a?(Integer)
        number = element

        box_number.each do |value|
          unless value.is_a?(Integer)
            value.delete(number) if value.include?(number)
          end
        end
      end
    end
  end
end

