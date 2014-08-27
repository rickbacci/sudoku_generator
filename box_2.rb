
def box2
  @box2 =  @puzzle[ 2] + @puzzle[ 5] + @puzzle[ 8]
end


def box2r0c0
  @x - row0 - col6 - box2
end

def box2r0c1
  @x - row0 - col7 - box2
end

def box2r0c2
  @x - row0 - col8 - box2
end


def box2r1c0
  @x - row1 - col6 - box2
end

def box2r1c1
  @x - row1 - col7 - box2
end

def box2r1c2
  @x - row1 - col8 - box2
end


def box2r2c0
  @x - row2 - col6 - box2
end

def box2r2c1
  @x - row2 - col7 - box2
end

def box2r2c2
  @x - row2 - col8 - box2
end


def box_2_array
  [box2r0c0, box2r0c1, box2r0c2,
   box2r1c0, box2r1c1, box2r1c2,
   box2r2c0, box2r2c1, box2r2c2]
end