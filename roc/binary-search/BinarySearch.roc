module [find]

find : List U64, U64 -> Result U64 _
find = \lst, target ->
    aux = \lo, hi ->
        mid = (lo + hi) // 2
        midValue = List.get? lst mid
        if midValue == target then
            Ok mid
        else if lo == hi then
            Err (ValueNotFound target lst)
        else if target < midValue then
            aux lo (mid - 1)
        else
            aux (mid + 1) hi
    aux 0 (List.len lst)
