function is_valid(sides)
    a, b, c = sort(sides)
    a > 0 && a + b > c
end

function is_equilateral(sides)
    Set(sides) |> length == 1 && is_valid(sides)
end

function is_isosceles(sides)
    Set(sides) |> length <= 2 && is_valid(sides)
end

function is_scalene(sides)
    Set(sides) |> length == 3 && is_valid(sides)
end
