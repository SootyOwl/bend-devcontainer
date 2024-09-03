# Consuming recursive datatypes requires a fold
# there are no loops in Bend

def sum(tree):
  # `fold` is a keyword used to reduce a collection to a single value using a binary operation.
  # folds are universal - any algorithm that can be implemented with a loop, can be implemented with a fold
  # the following turns the tree of values into a tree of additions:
  # ![![!1, !2], ![!3, !4]] => ![3, 7] => 10
  fold tree:
    case Tree/Node:
      return tree.left + tree.right
    case Tree/Leaf:
      return tree.value

# turns every element of the tree into a tuple of (index, value), returning a new tree
def enum(tree):
  idx = 0  # initialise a state
  fold tree with idx:
    case Tree/Node:
      return ![tree.left(idx * 2 + 0), tree.right(idx * 2 + 1)]
    case Tree/Leaf:
      return !(idx, tree.value)

# *everything* can be computed with a fold
# reminder: List/Nil is the empty list, List/Cons is a list with a head and a tail (the tail is itself a List/Cons or List/Nil)
def reverse(list):
  # [1: [2: [3: [4: Nil]]]] => [4: [3: [2: [1: Nil]]]
  fold list with acc = List/Nil:  # acc is the accumulator - the result of the fold, initialised to the empty list (List/Nil)
    case List/Nil:                # we reach the end of the list, return the accumulator
      return acc                  # the accumulator is the reversed list
    case List/Cons:               # we have a head and a tail
      # accumulate the tail of the list, with the head prepended to the accumulator
      return list.tail( # the inside of this bracket is defining the accumulator for the next iteration!
        List/Cons { head: list.head, tail: acc }
        # first:  acc = [1: Nil]
        # second: acc = [2: [1: Nil]]
        # third:  acc = [3: [2: [1: Nil]]]
        # fourth: acc = [4: [3: [2: [1: Nil]]]
        # the fifth case is when list.tail is List/Nil, and we return the accumulator
      )


def main:
  list = [1, 2, 3, 4]
  return reverse(list)
