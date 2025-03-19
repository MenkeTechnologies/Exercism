module [commands]

dict = [(1, "wink"), (2, "double blink"), (4, "close your eyes"), (8, "jump")]

commands = \number ->
    actions = dict |> List.join_map \(mask, action) -> if Num.bitwise_and number mask > 0 then [action] else []
    if Num.bitwise_and number 16 > 0 then
        List.reverse actions
    else
        actions
