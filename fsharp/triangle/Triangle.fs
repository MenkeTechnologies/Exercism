module Triangle

let valid (check: int -> bool)(tri: float list) : bool =
    let sorted = List.sort tri
    let len = tri |> List.distinct |> List.length
    
    sorted[0] > 0 && sorted[1] > 0 && sorted[2] > 0
    && sorted[0] + sorted[1] >= sorted[2]
    && len |> check

let equilateral triangle = valid ((=) 1) triangle

let isosceles triangle = valid ((>=) 2) triangle

let scalene triangle = valid ((=) 3) triangle
