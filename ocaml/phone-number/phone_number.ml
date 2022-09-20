open Base

let number s =

  let area_code x = if String.length x = 10 then x.[0] else x.[1] in
  let exchange_code x = if String.length x = 10 then x.[3] else x.[4] in
  if String.exists s ~f:Char.is_alpha then Error "letters not permitted"
  else if String.exists s ~f:(function '@' | ':' | '!' -> true | _ -> false)
  then Error "punctuations not permitted"
  else
    match String.filter s ~f:Char.is_digit with
    | digits when String.length digits < 10 ->
        Error "incorrect number of digits"
    | digits
      when String.length digits = 11 && not (Char.equal digits.[0] '1') ->
        Error "11 digits must start with 1"
    | digits when String.length digits > 11 -> Error "more than 11 digits"
    | digits when Char.equal (area_code digits) '0' ->
        Error "area code cannot start with zero"
    | digits when Char.equal (area_code digits) '1' ->
        Error "area code cannot start with one"
    | digits when Char.equal (exchange_code digits) '0' ->
        Error "exchange code cannot start with zero"
    | digits when Char.equal (exchange_code digits) '1' ->
        Error "exchange code cannot start with one"
    | digits when String.length digits = 10 -> Ok digits
    | digits -> Ok (String.drop_prefix digits 1)

