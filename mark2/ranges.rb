
def solve_for_rows(array, foo)
   send(foo, array, (0..8), (0..8), :rows)
end


def solve_for_columns(array, bar)

  send(bar, array, (0..8), [0], :columns)
  send(bar, array, (0..8), [1], :columns)
  send(bar, array, (0..8), [2], :columns)

  send(bar, array, (0..8), [3], :columns)
  send(bar, array, (0..8), [4], :columns)
  send(bar, array, (0..8), [5], :columns) 

  send(bar, array, (0..8), [6], :columns)
  send(bar, array, (0..8), [7], :columns)
  send(bar, array, (0..8), [8], :columns)
end

def solve_for_boxes(array, baz)
  send(baz, array, (0..2), (0..2), :boxes)
  send(baz, array, (0..2), (3..5), :boxes)
  send(baz, array, (0..2), (6..8), :boxes)

  send(baz, array, (3..5), (0..2), :boxes)
  send(baz, array, (3..5), (3..5), :boxes)
  send(baz, array, (3..5), (6..8), :boxes)

  send(baz, array, (6..8), (0..2), :boxes)
  send(baz, array, (6..8), (3..5), :boxes)
  send(baz, array, (6..8), (6..8), :boxes)
end
