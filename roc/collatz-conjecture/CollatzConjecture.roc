module [steps]

steps = \n ->
    aux = \m, acc ->
        if m == 1 then acc
        else if m % 2 == 0 then aux (m // 2) (acc + 1)
        else aux (3 * m + 1) (acc + 1)
    if n < 1 then Err OnlyPositiveIntegersAreAllowed
    else Ok (aux n 0)
