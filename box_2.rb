
def box2
  @box2 =  @puzzle[ 2] + @puzzle[ 5] + @puzzle[ 8]
end


def box2r0c6
  @x - row0 - col6 - box2
end

def box2r0c7
  @x - row0 - col7 - box2
end

def box2r0c8
  @x - row0 - col8 - box2
end


def box2r1c6
  @x - row1 - col6 - box2
end

def box2r1c7
  @x - row1 - col7 - box2
end

def box2r1c8
  @x - row1 - col8 - box2
end


def box2r2c6
  @x - row2 - col6 - box2
end

def box2r2c7
  @x - row2 - col7 - box2
end

def box2r2c8
  @x - row2 - col8 - box2
end


def box_2_array
  [box2r0c6, box2r0c7, box2r0c8,
   box2r1c6, box2r1c7, box2r1c8,
   box2r2c6, box2r2c7, box2r2c8]
end