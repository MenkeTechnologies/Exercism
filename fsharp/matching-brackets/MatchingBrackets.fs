module MatchingBrackets
let brackets = Map [('(',')');('[',']');('{','}')]

let isPaired input = 
    let rec aux stk input =
        match stk, input with
        | [], [] -> true
        | _::_, [] -> false
        | _, x::xs when Map.keys brackets |> Seq.contains x -> aux (x::stk) xs
        | x::xs, y::ys when Map.values brackets |> Seq.contains y && Map.find x brackets = y -> aux xs ys
        | _, x::_ when Map.values brackets |> Seq.contains x -> false
        | _, _::xs -> aux stk xs
    input |> Seq.toList |> aux []
