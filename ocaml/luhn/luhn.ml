open Base

let valid s =
    let nows = s |> String.filter ~f:(fun c -> not @@ Char.is_whitespace c) in
    if not @@ String.for_all nows ~f:(fun c -> Char.is_digit c) then false
    else if nows |> String.length < 2 then false else
        let rvs = nows |> String.to_list |> List.rev_map ~f:(fun c -> Char.to_int c - 48) in
        let sum = rvs |> List.foldi ~init:0 ~f:(fun i acc n ->
            if i % 2 = 1 then acc + (if n * 2 > 9 then n * 2 - 9 else n * 2) else acc + n ) in
        sum % 10 = 0
