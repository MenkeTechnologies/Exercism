module PopCount exposing (eggCount)

eggCount = aux >> List.sum 

aux n = if n == 0 then [] else modBy 2 n :: aux (n // 2)
