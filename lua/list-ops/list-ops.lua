local function reduce(xs, value, f)
    local init = value
    for _, n in ipairs(xs) do
        init = f(n, init)
    end
    return init
end

local function map(xs, f)
    local r = {}
    for _, n in ipairs(xs) do
        table.insert(r, f(n))
    end

    return r

end

local function filter(xs, pred)

    local r = {}
    for _, n in ipairs(xs) do
        if pred(n) then
            table.insert(r, n)
        end
    end

    return r
end

return {
    map = map,
    reduce = reduce,
    filter = filter
}
