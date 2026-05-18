namespace CollatzConjecture

def Positive := { x : Nat // 0 < x }
partial def steps (n : Positive) : Nat :=
    let rec aux (num cnt : Nat) : Nat :=
      if num == 1 then cnt
      else aux (if num % 2 == 0 then num / 2 else 3 * num + 1) (cnt + 1)
    aux n.val 0

end CollatzConjecture
