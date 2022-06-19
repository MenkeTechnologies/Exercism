open Base
open String

let sort_string s =
  s |> to_list |> List.sort ~compare:Char.compare |> of_char_list

let anagrams word words =
  let lc = lowercase word in
  let sorted = sort_string lc in
  List.filter words ~f:(fun cand -> lc <> lowercase cand && sorted = sort_string (lowercase cand))
