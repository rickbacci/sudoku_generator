
def box0
  @box0 =  @puzzle[ 0] + @puzzle[ 3] + @puzzle[ 6]
end


## row 0 box 0
def box0r0c0
  @x.shuffle - row0 - col0
end
#p box0r1c0

def box0r0c1
  @x.shuffle - row0 - col1
end
#p box0r1c1

def box0r0c2
  @x.shuffle - row0 - col2
end


## row 1 box 0
def box0r1c0
  @x.shuffle - row1 - col0
end

def box0r1c1
  @x.shuffle - row1 - col1
end

def box0r1c2
  @x.shuffle - row1 - col2
end


def box0r2c0
  @x.shuffle - row2 - col0
end

def box0r2c1
  @x.shuffle - row2 - col1
end

def box0r2c2
  @x.shuffle - row2 - col2
end


def box_0_array
  [box0r0c0, box0r0c1, box0r0c2,
   box0r1c0, box0r1c1, box0r1c2,
   box0r2c0, box0r2c1, box0r2c2]
end