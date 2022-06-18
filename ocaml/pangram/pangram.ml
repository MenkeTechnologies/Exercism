open Base
open String

let is_pangram text =
  for_all "abcdefghijklmnopqrstuvwxyz" ~f:(contains (lowercase text))

