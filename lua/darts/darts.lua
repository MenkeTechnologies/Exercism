return {
    score = function (x, y)
        local r = math.sqrt(x * x + y * y)
        return r <= 1 and 10 or r <= 5 and 5 or r <= 10 and 1 or 0
    end
}
