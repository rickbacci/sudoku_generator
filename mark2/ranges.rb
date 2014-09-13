
def solve_for_rows(array, foo, section)
   send(foo, array, (0..8), (0..8), :rows, section)
end


def solve_for_columns(array, bar, section)

  send(bar, array, (0..8), [0], :columns, section)
  send(bar, array, (0..8), [1], :columns, section)
  send(bar, array, (0..8), [2], :columns, section)

  send(bar, array, (0..8), [3], :columns, section)
  send(bar, array, (0..8), [4], :columns, section)
  send(bar, array, (0..8), [5], :columns, section) 

  send(bar, array, (0..8), [6], :columns, section)
  send(bar, array, (0..8), [7], :columns, section)
  send(bar, array, (0..8), [8], :columns, section)
end

def solve_for_boxes(array, baz, section)
  send(baz, array, (0..2), (0..2), :boxes, section)
  send(baz, array, (0..2), (3..5), :boxes, section)
  send(baz, array, (0..2), (6..8), :boxes, section)

  send(baz, array, (3..5), (0..2), :boxes, section)
  send(baz, array, (3..5), (3..5), :boxes, section)
  send(baz, array, (3..5), (6..8), :boxes, section)

  send(baz, array, (6..8), (0..2), :boxes, section)
  send(baz, array, (6..8), (3..5), :boxes, section)
  send(baz, array, (6..8), (6..8), :boxes, section)
end
