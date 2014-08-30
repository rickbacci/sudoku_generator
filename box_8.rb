
def box8
  @box2 =  @puzzle[20] + @puzzle[23] + @puzzle[26]
end


def box8r6c6
  @x - row6 - col6 - box8
end

def box8r6c7
  @x - row6 - col7 - box8
end

def box8r6c8
  @x - row6 - col8 - box8
end


def box8r7c6
  @x - row7 - col6 - box8
end

def box8r7c7
  @x - row7 - col7 - box8
end

def box8r7c8
  @x - row7 - col8 - box8
end


def box8r8c6
  @x - row8 - col6 - box8
end

def box8r8c7
  @x - row8 - col7 - box8
end

def box8r8c8
  @x - row8 - col8 - box8
end


def box_8_array
  @box_8_array =  [box8r6c6, box8r6c7, box8r6c8,
                   box8r7c6, box8r7c7, box8r7c8,
                   box8r8c6, box8r8c7, box8r8c8]
end