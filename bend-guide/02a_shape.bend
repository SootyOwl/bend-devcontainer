# Bend comes with 3 built in numeric types: u24, i24, and f24
# u24: 123, 0xF
# i24: +123, -123
# f24: 3.14, 1.0

# we can define our own datatypes
type Shape:
  Circle { radius }
  Rectangle { width, height }

def area(shape):
  # datatypes need match like objects need open
  match shape:
    case Shape/Circle:
      return 3.14 * shape.radius ** 2
    case Shape/Rectangle:
      return shape.width * shape.height

def main():
  return area(Shape/Circle { radius: 10.0 })