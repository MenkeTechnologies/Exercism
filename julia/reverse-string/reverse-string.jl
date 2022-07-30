using Unicode
myreverse(s) = s |> graphemes |> collect |> reverse |> join
