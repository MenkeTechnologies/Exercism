fun distance (strand1: string, strand2: string): int option =
    if String.size strand1 <> String.size strand2 then
      NONE
    else
      SOME (ListPair.foldlEq (fn (a,b,acc) => if a = b then acc else acc + 1) 0 (explode strand1, explode strand2))

