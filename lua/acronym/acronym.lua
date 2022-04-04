return function(s)

    local r = ''
    for w in s:gmatch('[A-Z]*[a-z]*') do
        r = r .. w:upper():sub(1,1)
    end

    return r

end
