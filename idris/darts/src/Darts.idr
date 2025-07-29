module Darts
export score : Double -> Double -> Int

score x y = score (pow (x * x + y * y) 0.5)
  where score : Double -> Int
        score dist = if dist > 10 then 0
                   else if dist > 5 then 1
                   else if dist > 1 then 5
                   else 10