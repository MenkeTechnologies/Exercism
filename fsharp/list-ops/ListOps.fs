module ListOps

let rec foldl fn init list =
    match list with
    | [] -> init
    | x::xs -> foldl fn (fn init x) xs
let rec foldr fn init list =
    list
    |> List.rev
    |> foldl (fun acc n -> fn n acc) init
    
let length list = foldl (fun acc _ -> acc + 1) 0 list
let reverse list = foldl (fun acc n -> n :: acc) [] list
let map f list = foldr (fun n acc -> f n :: acc) [] list
let filter f list = foldr (fun n acc -> if f n then n :: acc else acc) [] list
let append xs ys = foldr (fun n acc -> n :: acc) ys xs
let concat xs = foldr append [] xs
