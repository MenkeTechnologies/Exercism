let accumulate = (f, lst) => (
  List.fold_left(
    (acc: list('b), n: 'a) => [f(n), ...acc],
    [],
    lst
  )
  |> List.rev
);
