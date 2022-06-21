let are_balanced s =
  let bracks = Stack.create() in
  let compare s c = assert ((s |> Stack.pop) = c) in
  let parse = function
    |'(' |'{' |'[' as o -> Stack.push o bracks
    |')' -> compare bracks '('
    |'}' -> compare bracks '{'
    |']' -> compare bracks '['
    | _ -> ()
  in try
    s |> String.iter (fun c -> parse c);
    if Stack.is_empty bracks then true else false
  with _ ->
    false

