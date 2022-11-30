module ListOps exposing ( append , concat , filter , foldl , foldr , length , map , reverse)

length lst = case lst of
        _ :: rest -> 1 + length rest
        [] -> 0

reverse lst = case lst of
        x :: xs -> (reverse xs) ++ [x]
        [] -> []

foldl f acc lst = case lst of
        x :: xs -> foldl f (f x acc) xs
        [] -> acc

foldr f acc = reverse >> foldl f acc

map f lst = case lst of
        x :: xs -> (f x) :: (map f xs)
        [] -> []

filter f lst = case lst of
        x :: xs -> if f x == True then
                x :: filter f xs
            else
                filter f xs
        [] -> []

appendAux lstA lstB = case lstA of
        a :: otherA -> appendAux otherA (a :: lstB)
        [] -> lstB

append xs = appendAux (reverse xs)

concat = foldr (++) []

