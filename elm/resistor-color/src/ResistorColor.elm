module ResistorColor exposing (colorCode, colors)

colorCode color = findIndex color colors 0

colors = [ "black", "brown", "red", "orange", "yellow", "green", "blue", "violet", "grey", "white" ]

findIndex target lst cnt =
    case lst of
        [] ->
            -1
        x :: xs ->
            if target == x then
                cnt
            else
                findIndex target xs (cnt + 1)
