local dict = {
    { "M", 1000 },
    { "CM", 900 },
    { "D", 500 },
    { "CD", 400 },
    { "C", 100 },
    { "XC", 90 },
    { "L", 50 },
    { "XL", 40 },
    { "X", 10 },
    { "IX", 9 },
    { "V", 5 },
    { "IV", 4 },
    { "I", 1 },
}
return {
    to_roman = function(arabic)
        local r = ''
        for _, pair in pairs(dict) do
            r = r .. string.rep(pair[1], arabic // pair[2])
            arabic = arabic % pair[2]
        end
        return r
    end
}
