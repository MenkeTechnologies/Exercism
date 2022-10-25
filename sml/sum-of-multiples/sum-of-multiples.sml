fun sum (factors: int list, limit: int): int =
    let fun is_a_multiple n = List.exists (fn x => n mod x = 0) factors
    fun aux i acc =
        if i >= limit then acc else
          aux (i + 1) (if is_a_multiple i then acc + i else acc)
     in aux 1 0
    end
