module RotationalCipher

open System

let shiftChar baseChar (charToShift: char) shiftKey =
    char ((((int charToShift - int baseChar) + shiftKey) % 26) + int baseChar)
let shiftUpper = shiftChar 'A'
let shiftLower = shiftChar 'a'

let rotChar (shiftKey: int) ch =
    match ch with
    | c when not (Char.IsLetter c) -> c
    | c when Char.IsUpper c -> shiftUpper c shiftKey
    | c -> shiftLower c shiftKey

let rotate shiftKey text =
    text
    |> Seq.map (rotChar shiftKey)
    |> Seq.toArray
    |> String
