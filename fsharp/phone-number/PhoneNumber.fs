module PhoneNumber

open System

let clean (input: string): Result<uint64, string> =
    let s = input.TrimStart('+', '1') |> String.filter (fun c -> not ("-(). ".Contains(c))) 
    match s with
    | _ when String.exists Char.IsLetter s -> Error "letters not permitted"
    | _ when String.exists Char.IsPunctuation s -> Error "punctuations not permitted"
    | _ when s.Length < 10 -> Error "incorrect number of digits"
    | _ when s.Length = 11 -> Error "11 digits must start with 1"
    | _ when s.Length > 11 -> Error "more than 11 digits"
    | _ when s.[0] = '0' -> Error "area code cannot start with zero"
    | _ when s.[0] = '1' -> Error "area code cannot start with one"
    | _ when s.[3] = '0' -> Error "exchange code cannot start with zero"
    | _ when s.[3] = '1' -> Error "exchange code cannot start with one"
    | _ -> Ok(String.filter Char.IsDigit s |> Convert.ToUInt64)
