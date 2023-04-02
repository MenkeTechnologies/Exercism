module Proverb
let recite (input: string list) = 
    match input with
    | [] -> []
    | [one] -> [$"And all for the want of a {one}."]
    | _ ->
        let shiftedInput = input |> List.permute (fun x -> (x + List.length input - 1) % List.length input)
        let shiftedOutput = shiftedInput |> List.map2 (fun x y -> $"For want of a {x} the {y} was lost.") input |> List.take (List.length input - 1)
        [$"And all for the want of a {List.head input}."] |> List.append shiftedOutput
