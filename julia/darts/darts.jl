function score(x, y)
    r = hypot(x, y)
    r > 10 && return 0
    r > 5  && return 1
    r > 1  && return 5
    return 10
end
