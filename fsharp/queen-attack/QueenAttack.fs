module QueenAttack

open System

let valid x = x >= 0 && x <= 7

let create (position: int * int) =
    position |> fst |> valid
    && position |> snd |> valid

let canAttack (queen1: int * int) (queen2: int * int) =
    let dx = fst queen1 - fst queen2 |> Math.Abs
    let dy = snd queen1 - snd queen2 |> Math.Abs
    dx = 0 || dy = 0 || dx = dy
