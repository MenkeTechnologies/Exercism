pub type NestedList(a) {
  Null
  Value(a)
  List(List(NestedList(a)))
}

pub fn flatten(lst: NestedList(a)) -> List(a) {
  lst
  |> aux_flatten([])
  |> reverse
}

fn aux_flatten(lst, acc) {
  case lst {
      Null -> acc
      Value(a) -> [a, ..acc]
      List([]) -> acc
      List([hd, ..tl]) -> aux_flatten(List(tl), aux_flatten(hd, acc))
    }
}

fn reverse(lst) {
  aux_rvs(lst, [])
}

fn aux_rvs(lst, acc) {
  case lst {
      [] -> acc
      [hd, ..tl] -> aux_rvs(tl, [hd, ..acc])
    }
}

