# define Sum with two parameters, start and target.
def Sum(start, target):
  if start == target:
    # if start is equal to target, return start.
    return start
  else:
    # if start is not equal to target, recursively call Sum with start + 1 as the new start.
    return start + Sum(start + 1, target)


def main():
  # translates to (1 + (2 + (3 + (4 + ... + 1_000_000))))
  return Sum(1, 1_000)
  