local rainspeak = {
    { 3, 'Pling' },
    { 5, 'Plang' },
    { 7, 'Plong' }
}

return function(number)
    local r = ''
    for _, e in ipairs(rainspeak) do
        local prime, word = table.unpack(e)
        if number % prime == 0 then
            r = r .. word
        end
    end
    return #r > 0 and r or tostring(number)
end
