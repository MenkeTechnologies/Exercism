fun score (x: real, y: real): int =
  let
    val dist = Math.sqrt(x * x + y * y)
  in
    if dist > 10.0 then 0
    else if dist > 5.0 then 1
    else if dist > 1.0 then 5
    else 10
  end

