module HighScores

let scores = id

let latest = List.last

let personalBest = List.max

let personalTopThree (values: int list): int list = values |> List.sortDescending |> List.truncate 3
