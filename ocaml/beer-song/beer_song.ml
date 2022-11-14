open Base

let verse = function
  | 0 ->
      "No more bottles of beer on the wall, no more bottles of beer.\n\
       Go to the store and buy some more, 99 bottles of beer on the wall."
  | 1 ->
      "1 bottle of beer on the wall, 1 bottle of beer.\n\
       Take it down and pass it around, no more bottles of beer on the wall."
  | n ->
      let num = Int.to_string n in
      let num_minus_one = Int.to_string (n - 1) in
      let plural = if n > 2 then "s" else "" in
      String.concat
        [
          num;
          " bottles of beer on the wall, ";
          num;
          " bottles of beer.\nTake one down and pass it around, ";
          num_minus_one;
          " bottle";
          plural;
          " of beer on the wall.";
        ]

let recite from len =
  List.init len ~f:(fun index -> verse (from - index))
  |> String.concat ~sep:"\n\n"
