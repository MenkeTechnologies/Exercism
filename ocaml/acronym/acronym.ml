open Base

let acronym phrase = phrase
    |> String.split_on_chars ~on:[' '; '_'; '-']
    |> List.filter ~f:(fun s -> String.length s > 0)
    |> List.map ~f:(fun s -> Char.uppercase (String.get s 0))
    |> String.of_char_list
