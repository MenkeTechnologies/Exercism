val drops = [(3, "Pling"), (5, "Plang"), (7,"Plong")]

fun convert n =
    let
    val r = String.concat(List.map(fn(m,s) => if n mod m = 0 then s else "") drops)
    in
    if r = "" then Int.toString n else r
    end
