open Base

module Int_map = Map.M(Int)

type school = string list Int_map.t

let empty_school = Map.empty (module Int)

let grade gr roster =
  match Map.find roster gr with
      | Some names -> names
      | None -> []

let add name gr roster =
  roster |> Map.set ~key:gr ~data:(name::(grade gr roster))

let sorted roster =
  roster |> Map.map ~f:(List.sort ~compare:(String.compare))

let roster roster = roster |> sorted |> Map.data |> List.concat

