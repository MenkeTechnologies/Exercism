module RomanNumerals

let roman arabicNumeral =
    [ (1000, "M")
      (900, "CM")
      (500, "D")
      (400, "CD")
      (100, "C")
      (90, "XC")
      (50, "L")
      (40, "XL")
      (10, "X")
      (9, "IX")
      (5, "V")
      (4, "IV")
      (1, "I") ]
    |> List.fold (fun (accNum, accStr) (value, sym) ->
        let quot = accNum / value
        if quot > 0
        then (accNum % value, accStr + String.replicate quot sym)
        else (accNum, accStr)) (arabicNumeral, "")
    |> snd
