# In python we have classes, but in Bend we just have objects
object V2 { x, y }  # This is a 2D vector object definition


def distance(a, b):
  # we need to open to access fields of the object
  open V2: a  # tell bend to consume the vector `a`, splitting it into its components
  open V2: b
  dx = b.x - a.x
  dy = b.y - a.y
  return (dx * dx + dy * dy) ** 0.5

def main():
  return distance(V2 {x: 10.0, y: 10.0}, V2 {x: 20.0, y: 20.0})