
def box6
  @box2 =  @puzzle[18] + @puzzle[21] + @puzzle[24]
end


def box6r6c0
  @x - row6 - col0 - box6
end

def box6r6c1
  @x - row6 - col1 - box6
end

def box6r6c2
  @x - row6 - col2 - box6
end


def box6r7c0
  @x - row7 - col0 - box6
end

def box6r7c1
  @x - row7 - col1 - box6
end

def box6r7c2
  @x - row7 - col2 - box6
end


def box6r8c0
  @x - row8 - col0 - box6
end

def box6r8c1
  @x - row8 - col1 - box6
end

def box6r8c2
  @x - row8 - col2 - box6
end


def box_6_array
  [box6r6c0, box6r6c1, box6r6c2,
   box6r7c0, box6r7c1, box6r7c2,
   box6r8c0, box6r8c1, box6r8c2]
end