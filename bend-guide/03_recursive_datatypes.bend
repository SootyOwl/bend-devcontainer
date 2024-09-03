# Recursive data types
# type Tree:
#   Node { ~left, ~right } # ~ flags a field as recursive
#   Leaf { value }

# tree is builtin, and has a dedicated syntax:
# ![a, b] =>  Tree/Node { left: a, right: b }
# !a      =>  Tree/Leaf { value: a }

# tree = ![![!1, !2], ![!3, !4]]  =>  Tree/Node { left: Tree/Node { left: Tree/Leaf { value: 1 }, right: Tree/Leaf { value: 2 } }, right: Tree/Node { left: Tree/Leaf { value: 3 }, right: Tree/Leaf { value: 4 } } }
