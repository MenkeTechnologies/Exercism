module CollatzConjecture

aux : Int -> Int -> Int
aux cnt 1 = cnt
aux cnt n = aux (cnt + 1) $ if mod n 2 == 0
                                             then div n 2
                                             else 3 * n + 1
export
steps : Int -> Maybe Int
steps n = if n < 1
                  then Nothing
                  else Just $ aux 0 n
