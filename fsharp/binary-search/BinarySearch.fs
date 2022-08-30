module BinarySearch

let find (input: int []) search =
    let rec aux lo hi =
        if hi < lo then
            None
        else
            let mid = (lo + hi) / 2
            let candidate = input[mid]
            if candidate = search then Some mid
            elif search < candidate then aux lo (mid - 1)
            else aux (mid + 1) hi
    aux 0 (input.Length - 1)
