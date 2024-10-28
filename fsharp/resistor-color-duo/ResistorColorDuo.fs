module ResistorColorDuo
let colors = ["black"; "brown"; "red"; "orange"; "yellow"; "green"; "blue"; "violet"; "grey"; "white"]

let getIndex (target: string) = colors |> List.findIndex(fun colo -> colo = target)
let value (colors: List<string>) = (colors[0] |> getIndex) * 10 + (colors[1] |> getIndex)
