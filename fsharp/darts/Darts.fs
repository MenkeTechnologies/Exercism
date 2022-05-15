module Darts

open System
let score (x: double) (y: double): int =
    match sqrt(Math.Pow(x, 2) + Math.Pow(y, 2)) with
    | r when r <= 1 -> 10
    | r when r <= 5 -> 5
    | r when r <= 10 -> 1
    | _ -> 0
