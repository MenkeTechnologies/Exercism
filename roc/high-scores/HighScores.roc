module [latest, personalBest, personalTopThree]

latest = List.last

personalBest = List.max

personalTopThree = \scores -> scores |> List.sortDesc |> List.takeFirst 3
