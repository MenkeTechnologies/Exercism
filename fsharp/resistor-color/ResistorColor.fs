module ResistorColor

let colors = ["black"; "brown"; "red"; "orange"; "yellow"; "green"; "blue"; "violet"; "grey"; "white"]

let colorCode (target: string) = colors |> List.findIndex(fun colo -> colo = target)
