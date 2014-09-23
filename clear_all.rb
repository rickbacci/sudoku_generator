
def clear_all(new_puzzle)

  set_variables(new_puzzle)

  rows = [row0(new_puzzle), row1(new_puzzle), row2(new_puzzle), row3(new_puzzle), row4(new_puzzle), row5(new_puzzle), row6(new_puzzle), row7(new_puzzle), row8(new_puzzle)]
  columns = [col0(new_puzzle), col1(new_puzzle), col2(new_puzzle), col3(new_puzzle), col4(new_puzzle), col5(new_puzzle), col6(new_puzzle), col7(new_puzzle), col8(new_puzzle)]
  boxes = [box0(new_puzzle), box1(new_puzzle), box2(new_puzzle), box3(new_puzzle), box4(new_puzzle), box5(new_puzzle), box6(new_puzzle), box7(new_puzzle), box8(new_puzzle)]

  [rows, columns, boxes].each do |items|

    items.each do |item|
      item.each do |element|

        if element.is_a?(Integer)
          number = element

          item.each do |value|
            unless value.is_a?(Integer)
              value.delete(number) if value.include?(number)
            end
          end
        end
      end
    end
  end
end
