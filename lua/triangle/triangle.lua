local triangle = {}

function triangle.kind(a, b, c)
    local sides = {a, b, c}
    table.sort(sides)
    if sides[1] <= 0 or sides[1] + sides[2] < sides[3] then
        error("Input Error")
    end
    local triangles = {[0] = "scalene", [1] = "isosceles", [2] = "isosceles", [3] = "equilateral"}
    local r = 0
    if a == b then
        r = r + 1
    end
    if a == c then
        r = r + 1
    end
    if b == c then
        r = r + 1
    end
    return triangles[r]
end

return triangle
