def Raindrops.convert (n : Nat) : String :=
  let s := [("Pling",3),("Plang",5),("Plong",7)] |>.filter (n % ·.2 == 0) |>.map (·.1) |> String.join
  if s == "" then toString n else s
