
def box0
  @box0 =  @puzzle[ 0] + @puzzle[ 3] + @puzzle[ 6]
end


def box0r0c0
  @x - row0 - col0 - box0
end

def box0r0c1
  @x - row0 - col1 - box0
end

def box0r0c2
  @x - row0 - col2 - box0
end


def box0r1c0
  @x - row1 - col0 - box0
end

def box0r1c1
  @x - row1 - col1 - box0
end

def box0r1c2
  @x - row1 - col2 - box0
end


def box0r2c0
  @x - row2 - col0 - box0
end

def box0r2c1
  @x - row2 - col1 - box0
end

def box0r2c2
  @x - row2 - col2 - box0
end


def box_0_array
  @box_0_array =  [box0r0c0, box0r0c1, box0r0c2,
                   box0r1c0, box0r1c1, box0r1c2,
                   box0r2c0, box0r2c1, box0r2c2]
end