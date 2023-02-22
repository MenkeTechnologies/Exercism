fun rebase (_, _, []) = NONE
  | rebase (inBase: int, outBase: int, lst: int list) =
    let
        fun aux (acc, 0) = SOME(acc)
          | aux (acc, sum) = aux (sum mod outBase :: acc, sum div outBase)
    in
        if inBase < 2 orelse outBase < 2
        orelse List.exists (fn d => d < 0 orelse d >= inBase) lst
        orelse List.all (fn d => d = 0) lst
        then NONE
        else aux ([], foldl (fn (n, acc) => acc * inBase + n) 0 lst)
    end

