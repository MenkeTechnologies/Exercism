module CollatzConjecture

let rec steps (number: int) : int option =
    match number with
    | 1 -> Some 0
    | number when number <= 0 -> None
    | number when number % 2 = 0 -> number / 2 |> steps |> Option.map (fun v -> v + 1)
    | number -> 3 * number + 1 |> steps |> Option.map (fun v -> v + 1)
