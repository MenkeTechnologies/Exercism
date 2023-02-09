module Sublist

type SublistType =
    | Equal
    | Sublist
    | Superlist
    | Unequal

let isSubList ys xs =
    xs
    |> List.isEmpty
    || ys
       |> List.windowed xs.Length
       |> List.exists ((=) xs)

let sublist xs ys =
    if xs = ys then Equal
    elif xs |> isSubList ys then Sublist
    elif ys |> isSubList xs then Superlist
    else Unequal
