open Float

let score (x: float) (y: float): int =
    let dist = pow ((pow x 2.) +. (pow y 2.)) 0.5 in
    if dist > 10. then 0 else if dist > 5. then 1 else if dist > 1. then 5 else 10
