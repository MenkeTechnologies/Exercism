val numerals = [(1000, "M"), (900, "CM"), (500, "D"), (400, "CD"), (100, "C"), (90, "XC"),
                (50, "L"), (40, "XL"), (10, "X"), (9, "IX"), (5, "V"), (4, "IV"), (1, "I")]
fun roman num =
  let fun aux acc n =
        case List.find (fn (x, y) => x <= n) numerals of
          NONE        => acc
        | SOME (i, r) => aux (acc ^ r) (n - i)
  in  aux "" num
  end

