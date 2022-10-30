alphabet = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'

function half_diamond(n)
    local result = { ('%%%ds%%%ds'):format(n, n):format('A', '\n') }
    for i = 2, n do
        local c = alphabet:sub(i,i)
        table.insert(result, ('%%%ds%%%ds%%%ds')
                :format(n - i + 1, 2 * i - 2, n - i + 1)
                :format(c, c, '\n')
        )
    end
    return result
end

return function (c)
    local n = alphabet:find(c)
    local diamond = half_diamond(n)
    for i = n - 1, 1, -1 do
        table.move(diamond,i,i,#diamond+1)
    end
    return table.concat(diamond)
end
