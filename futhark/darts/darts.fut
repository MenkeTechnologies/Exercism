def score (x: f64) (y: f64) =
  let d = f64.sqrt (x*x+y*y)
  in if d > 10 then 0 else if d > 5 then 1 else if d > 1 then 5 else 10
