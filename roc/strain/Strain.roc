module [keep, discard]

keep = \lst, f ->
    lst |> List.walk [] \acc, elem ->
        if f elem then
            acc |> List.append elem
        else
            acc

discard = \lst, f ->
    lst |> keep (|elem| !(f elem))
