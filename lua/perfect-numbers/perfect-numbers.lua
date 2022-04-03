local function aliquot_sum(n)
    r = 0
    for i = 1, n // 2 do
        if n % i == 0 then
            r = r + i
        end
    end

    return r

end

local function classify(n)
    local sum = aliquot_sum(n)
    if sum > n then
        return "abundant"
    elseif sum < n then
        return "deficient"
    else
        return "perfect"
    end

end

return {
    aliquot_sum = aliquot_sum,
    classify = classify
}
