datatype 'a tree = Empty | Elem of 'a | List of 'a tree list

fun flatten Empty = []
  | flatten (Elem n) = [n]
  | flatten (List []) = []
  | flatten (List (x::xs))= flatten x @ flatten (List xs)
