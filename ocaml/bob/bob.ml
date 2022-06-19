open Base
open String

let response_for s =
  let s = s |> strip in
  let has_alpha s = s |> exists ~f:Char.is_alpha in
  if is_empty s then "Fine. Be that way!"
  else if has_alpha s && uppercase s = s then
    if s |> is_suffix ~suffix:"?" then "Calm down, I know what I'm doing!"
    else "Whoa, chill out!"
  else if s |> is_suffix ~suffix:"?" then "Sure."
  else "Whatever."
