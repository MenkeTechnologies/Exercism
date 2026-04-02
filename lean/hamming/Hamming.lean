namespace Hamming

def distance (s1 : String) (s2 : String) : Option Nat :=
  if s1.length != s2.length then none
  else
    List.zip s1.toList s2.toList
    |> List.filter (fun (a, b) => a != b)
    |> List.length
    |> some

end Hamming
