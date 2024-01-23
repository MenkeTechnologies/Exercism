fun keep f l = case l of
       [] => []
     | x::xs => if f x then x :: keep f xs else keep f xs

fun discard f l = keep (fn x => not (f x)) l

