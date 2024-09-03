#!/usr/bin/env bend

# define a Sum that can run in parallel
def Sum(start, target):
  if start == target:
    return start
  else:
    mid = (start + target) / 2
    return Sum(start, mid) + Sum(mid + 1, target)

def main(args):
  # translates to (1 + 2) + (3 + 4) + ... + (999_999 + 1_000_000)
  return Sum(1, 1_000)