open Base
open String
open Char

let word_count s = s
  |> map ~f:(fun c -> if is_alphanum c || equal '\'' c then lowercase c else ' ')
  |> split ~on:' '
  |> List.map ~f:(strip ~drop:(equal '\''))
  |> List.filter ~f:(Fn.non is_empty)
  |> List.fold ~init:(Map.empty (module String))
       ~f:(Map.update ~f:(function None -> 1 | Some n -> n + 1))
