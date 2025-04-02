module [eggCount]

eggCount = \number ->
    aux = \n, count ->
        when n is
            0 -> count
            _ -> aux (Num.shift_right_by n, 1) (count + Num.bitwise_and n, 1)
    aux 0 number
