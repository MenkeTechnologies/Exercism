import gleam/list

pub type Comparison {
  Equal
  Unequal
  Sublist
  Superlist
}

pub fn sublist(compare list_a: List(a), to list_b: List(a)) -> Comparison {
  let is_sublist = check_is_sublist(list_a, of: list_b)
  let is_superlist = check_is_sublist(list_b, of: list_a)

  case True {
    _ if list_a == list_b -> Equal
    _ if is_sublist -> Sublist
    _ if is_superlist -> Superlist
    _ -> Unequal
  }
}

fn check_is_sublist(lst1: List(a), of lst2: List(a)) -> Bool {
  case list.length(lst1) {
    0 -> True
    length_of_first ->
      lst2
      |> list.window(length_of_first)
      |> list.any(fn(window) { window == lst1 })
  }
}
