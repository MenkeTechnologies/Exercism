type base = int
let dec_to_base base n =
  if n = 0 then [0] else
    let rec aux acc = function
      | 0 -> acc
      | x -> aux ((x mod base) :: acc) (x / base)
    in aux [] n
let to_sum base digits = digits |> List.fold_left (fun acc n -> acc * base + n ) 0
let convert_bases ~from ~digits ~target =
  if from < 2 || target < 2 || digits |> List.exists (fun n -> n < 0 || n >= from ) then None
  else Some (digits |> to_sum from |> dec_to_base target)
