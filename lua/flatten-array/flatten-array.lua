local function flatten(input, r)
    r = r or {}

    for _,v in ipairs(input) do
        if type(v) == "table" then
            flatten(v, r)
        elseif v then
            r[#r + 1] = v

        end
    end

    return r

end

return flatten
