namespace DifferenceOfSquares

def squareOfSum (n : Nat) : Nat := Array.range (n + 1) |>.sum |> (·^2)

def sumOfSquares (n : Nat) : Nat := Array.range (n + 1) |>.map (·^2) |>.sum

def differenceOfSquares (n : Nat) : Nat :=  squareOfSum n - sumOfSquares n

end DifferenceOfSquares
