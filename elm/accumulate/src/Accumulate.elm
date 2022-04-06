module Accumulate exposing (accumulate)


accumulate : (a -> b) -> List a -> List b
accumulate f list =
    case list of
        [] -> []
        h::t -> f h :: accumulate f t
