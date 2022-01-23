local function square_of_sum(n)
    local s = 0
    for i = 1, n do
        s = s + i
    end

    return s ^ 2

end

local function sum_of_squares(n)

    local s = 0
    for i = 1, n do
        s = s + i ^ 2
    end

    return s

end

local function difference_of_squares(n)

    return square_of_sum(n) - sum_of_squares(n)

end

return {
    square_of_sum = square_of_sum,
    sum_of_squares = sum_of_squares,
    difference_of_squares = difference_of_squares
}
