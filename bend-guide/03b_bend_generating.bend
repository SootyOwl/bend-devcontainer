#!bend
# Bending is the opposite of folding, `bend` keyword creates recursive datatypes

def main():
  bend x = 0:       # initialise a state (x=0)
    when x < 3:     # for as long as x is less than 3
      # 'fork' the state in two, creating a Tree/Node and continuing with x+1
      tree = ![fork(x + 1), fork(x + 1)] 
    else:          # when x is 3 or more
      tree = !7  # return a leaf with value 7
  return tree
