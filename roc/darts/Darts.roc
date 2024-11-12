module [score]

score : F64, F64 -> U64
score = \x, y ->
    distance = Num.sqrt (x * x + y * y)
    if distance > 10 then
        0
    else if distance > 5 then
        1
    else if distance > 1 then
        5
    else
        10
