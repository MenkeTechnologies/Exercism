module Sublist exposing (ListComparison(..), sublist)

type ListComparison
    = Equal
    | Superlist
    | Sublist
    | Unequal

isSublist alist blist =
    if List.length blist < List.length alist then
        Unequal
    else
        if alist == List.take (List.length alist) blist then
            Sublist
        else
            isSublist alist (List.drop 1 blist)

sublist alist blist =
    case (isSublist alist blist, isSublist blist alist) of
            (Unequal, Unequal) -> Unequal
            (Sublist, Unequal) -> Sublist
            (Unequal, Sublist) -> Superlist
            _ -> Equal
