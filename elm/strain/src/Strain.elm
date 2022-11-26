module Strain exposing (discard, keep)

keep f lst =
    let prepends n acc =
            case f n of
                True -> n :: acc
                False -> acc
    in List.foldr prepends [] lst

discard f lst = keep (f >> not) lst
