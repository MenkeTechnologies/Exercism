return function(s)
    local lc = s:lower()
    for c in string.gmatch("abcdefghijklmnopqrstuvwxyz", ".") do
        if not lc:find(c) then
            return false
        end
    end

    return true

end
