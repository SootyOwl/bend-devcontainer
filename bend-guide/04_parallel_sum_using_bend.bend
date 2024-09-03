# we already have parallel_sum.bend, but this time we'll use the bend keyword
def main():
  bend d = 0, i = 0:  # initialise two states, d is the depth, i is the index
    when d < 28:      # for as long as d is less than 28
      # 'fork' the state in two, increasing the depth and doubling the index
      # e.g. first: fork(d=1, i=0) + fork(d=1, i=1)
      # e.g. second: (fork(d=2, i=0) + fork(d=2, i=1)) + (fork(d=2, i=2) + fork(d=2, i=3)
      # e.g. third: ((fork(d=3, i=0) + fork(d=3, i=1)) + (fork(d=3, i=2) + fork(d=3, i=3))) + ((fork(d=3, i=4) + fork(d=3, i=5)) + (fork(d=3, i=6) + fork(d=3, i=7)))
      # etc up to d=28, where we set sum to i and collapse the tree into the sum
      # note that at a depth of 28 we have 2^27 = 134,217,728 leaves to sum!
      sum = fork(d + 1, i*2+0) + fork(d + 1, i*2+1)
    else:
      sum = i
  return sum