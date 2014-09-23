
def solve_for_rows(array, foo, section)

  #if box_finished?(@box2) == false
    send(foo, array, ([0]), (0..8), :row0, section)
    send(foo, array, ([1]), (0..8), :row1, section)
    send(foo, array, ([2]), (0..8), :row2, section)
  #else
    send(foo, array, ([3]), (0..8), :row3, section)
    send(foo, array, ([4]), (0..8), :row4, section)
    send(foo, array, ([5]), (0..8), :row5, section)

    send(foo, array, ([6]), (0..8), :row6, section)
    send(foo, array, ([7]), (0..8), :row7, section)
    send(foo, array, ([8]), (0..8), :row8, section)
  #end
end


def solve_for_columns(array, bar, section)

    send(bar, array, (0..8), [0], :col0, section)
    send(bar, array, (0..8), [1], :col1, section)
    send(bar, array, (0..8), [2], :col2, section)

    send(bar, array, (0..8), [3], :col3, section)
    send(bar, array, (0..8), [4], :col4, section)
    send(bar, array, (0..8), [5], :col5, section) 

    send(bar, array, (0..8), [6], :col6, section)
    send(bar, array, (0..8), [7], :col7, section)
    send(bar, array, (0..8), [8], :col8, section)
end

def solve_for_boxes(array, baz, section)
  
  if box_finished?(@box2) == false
    send(baz, array, (0..2), (6..8), :box2, section)
  else
    send(baz, array, (3..5), (6..8), :box5, section)
    send(baz, array, (0..2), (3..5), :box1, section)

    send(baz, array, (0..2), (0..2), :box0, section)
    send(baz, array, (0..2), (3..5), :box1, section)
    send(baz, array, (0..2), (6..8), :box2, section)

    send(baz, array, (3..5), (0..2), :box3, section)
    send(baz, array, (3..5), (3..5), :box4, section)
    send(baz, array, (3..5), (6..8), :box5, section)

    send(baz, array, (6..8), (0..2), :box6, section)
    send(baz, array, (6..8), (3..5), :box7, section)
    send(baz, array, (6..8), (6..8), :box8, section)
  end
end
