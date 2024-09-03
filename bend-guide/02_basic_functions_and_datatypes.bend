
def am_i_old(age):
  # Basic input and output
  if age < 18:
    return "You're a kid"
  else:
    return "You're an adult"

def distance(a, b):
  # tuple unpacking
  (ax, ay) = a
  (bx, by) = b
  dx = bx - ax
  dy = by - ay
  return (dx * dx + dy * dy) ** 0.5

def main():
  return distance((10.0, 10.0), (20.0, 20.0))