return function(s)
    local m = {}
    for c in s:lower():gmatch('%a') do
        if m[c] then
            return false
        end

        m[c] = true
    end

    return true
end
