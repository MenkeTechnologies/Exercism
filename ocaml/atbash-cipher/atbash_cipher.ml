open Base

let start_index = Char.to_int 'a'
let end_index = 25

let encode_or_decode_char c =
  if not (Char.is_alpha c)
  then c
  else
    let english_index = Char.to_int c - start_index in
    let atbash_index = end_index - english_index in
    start_index + atbash_index |> Char.of_int_exn

let encode ?(block_size = 5) s =
  s
  |> String.filter ~f:Char.is_alphanum
  |> String.lowercase
  |> String.to_list
  |> List.map ~f:encode_or_decode_char
  |> List.groupi ~break:(fun i _ _ -> i % block_size = 0)
  |> List.map ~f:String.of_char_list
  |> String.concat ~sep:" "

let decode atbash =
  atbash |> String.filter ~f:Char.is_alphanum |> String.map ~f:encode_or_decode_char
