namespace ArmstrongNumbers

def isArmstrongNumber (number : Nat) : Bool :=
  let digits := Nat.toDigits 10 number
  let length := List.length digits
  number == (digits |> List.map (fun n => ((Char.toNat n) - 48)^length) |> List.sum)

end ArmstrongNumbers
