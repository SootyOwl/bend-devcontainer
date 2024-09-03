type List:
  Nil
  Cons { head, ~tail }  # ~ flags a field as recursive, so this is a concat between a head value and a tail list

# list is builtin, so we can just write lists directly like this:
# my_list = [1, 2, 3]  =>  List/Cons { head: 1, tail: List/Cons { head: 2, tail: List/Cons { head: 3, tail: List/Nil } } }
# my_list = []  =>  List/Nil

def main:
  my_list = [1, 2, 3]
  match my_list:  # return the first element of the list, or 0 if the list is empty
    case List/Cons:
      return my_list.head
    case List/Nil:
      return 0
