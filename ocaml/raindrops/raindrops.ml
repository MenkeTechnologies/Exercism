open Core;;

let raindrop num =
    (* list factors to test and their raindrop descriptions *)
    let drops = [("Pling", 3); ("Plang", 5); ("Plong", 7)]
    |> List.filter_map ~f:(fun (str, factor) ->
        if num mod factor = 0 then Some str
        else None)
    |> String.concat
    in
    match drops with
    | "" -> string_of_int num
    | _ -> drops
;;
