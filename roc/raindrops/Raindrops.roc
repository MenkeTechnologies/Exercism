module [convert]

dict = [(3, "Pling"), (5, "Plang"), (7, "Plong")]

convert : U64 -> Str
convert = \n ->
    sounds = List.keepOks dict
        \(m, sound) -> if n % m == 0 then Ok sound else Err {}
    if List.isEmpty sounds then Num.toStr n else Str.joinWith sounds ""
