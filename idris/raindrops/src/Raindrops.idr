module Raindrops

export
convert : Int -> String
convert n =
  let pling = if mod n 3 == 0 then "Pling" else ""
      plang = if mod n 5 == 0 then "Plang" else ""
      plong = if mod n 7 == 0 then "Plong" else ""
      res = pling ++ plang ++ plong
  in if res == "" then show n else res
