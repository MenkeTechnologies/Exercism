module Grains

open System

let square (n: int) : Result<uint64, string> =
    if n > 0 && n < 65 then
        Math.Pow(2, float (n - 1)) |> uint64 |> Ok
    else
        Error "square must be between 1 and 64"

let total: Result<uint64, string> =
    List.map square [ 1..64 ]
    |> List.reduce (fun acc n ->
        match acc, n with
        | Ok acc, Ok v -> Ok(acc + v)
        | _ -> Error "bad square"
        )
