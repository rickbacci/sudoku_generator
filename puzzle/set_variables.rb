def set_variables(new_puzzle)
  set_row_variables(new_puzzle)
  set_column_variables(new_puzzle)
  set_box_variables(new_puzzle)
end



def set_row_variables(new_puzzle)
  row0(new_puzzle)
  row1(new_puzzle)
  row2(new_puzzle)
  row3(new_puzzle)
  row4(new_puzzle)
  row5(new_puzzle)
  row6(new_puzzle)
  row7(new_puzzle)
  row8(new_puzzle)
end

def set_column_variables(new_puzzle)
  col0(new_puzzle)
  col1(new_puzzle)
  col2(new_puzzle)
  col3(new_puzzle)
  col4(new_puzzle)
  col5(new_puzzle)
  col6(new_puzzle)
  col7(new_puzzle)
  col8(new_puzzle)
end

def set_box_variables(new_puzzle)
  box0(new_puzzle)
  box1(new_puzzle)
  box2(new_puzzle)
  box3(new_puzzle)
  box4(new_puzzle)
  box5(new_puzzle)
  box6(new_puzzle)
  box7(new_puzzle)
  box8(new_puzzle)
end