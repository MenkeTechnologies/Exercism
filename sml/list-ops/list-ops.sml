fun concat (lists: int list list): int list = foldr op@ [] lists

fun reverse (list: int list): int list = foldl op:: [] list

fun filter (function: int -> bool, list: int list): int list =
    let
        fun aux _ [] = []
          | aux f (x::xs) = if f x then x::(aux f xs) else aux f xs
    in
        aux function list
    end

fun map (function: int -> int, list: int list): int list =
    let
        fun aux _ [] = []
          | aux f (x::xs) = (f x)::(aux f xs)
    in
        aux function list
    end

fun append (list1: int list, list2: int list): int list = list1 @ list2

fun length (ns: int list): int =
    let
        fun aux [] l = l
          | aux (x::xs) l = aux xs (l + 1)
    in
        aux ns 0
    end

fun foldl (function: int * int -> int, initial: int, list: int list): int =
    let
        fun aux _ i [] = i
          | aux f i (x::xs) = aux f (f (i, x)) xs
    in
        aux function initial list
    end

fun foldr (function: int * int -> int, initial: int, list: int list): int =
    let
        fun aux _ i [] = i
          | aux f i (x::xs) = f(x, (aux f i xs))
    in
        aux function initial list
    end

