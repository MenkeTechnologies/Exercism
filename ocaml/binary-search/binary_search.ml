let find ary target =
    let rec aux lo hi =
        if lo > hi then Error "value not in array"
        else let i = (lo + hi) / 2 in
        match ary.(i) with
        | x when x = target -> Ok i
        | x when x > target -> aux lo (i - 1)
        | _ -> aux (i + 1) hi
    in
    aux 0 (Array.length ary - 1)
