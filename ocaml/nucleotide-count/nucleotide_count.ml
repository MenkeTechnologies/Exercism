open Base

let empty = Map.empty (module Char)

let is_valid_char = function 'A' | 'C' | 'G' | 'T' -> true | _ -> false

let count_nucleotide s c =
  if is_valid_char c then
    String.fold_result s ~init:0 ~f:(fun count -> function
      | char when Char.equal c char -> Ok (count + 1)
      | char when is_valid_char char -> Ok count
      | char -> Error char)
  else Error c

let count_nucleotides s =
  String.fold_result s ~init:empty ~f:(fun acc c ->
      if is_valid_char c then
        Ok (Map.update acc c ~f:(function None -> 1 | Some n -> n + 1))
      else Error c)
