module [colorCode, colors]

colorCode = \color ->  colors |> List.findFirstIndex \c -> c == color
colors = ["black", "brown", "red", "orange", "yellow", "green", "blue", "violet", "grey", "white"]
