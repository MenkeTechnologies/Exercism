return function(sublist, list)
    for i = 1, #list - #sublist + 1 do
        local t = {}
        for j = i, i + #sublist-1 do table.insert(t, list[j]) end
        if table.concat(sublist) == table.concat(t) then return true end
    end
    return false
end

