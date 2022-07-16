return {
    hey = function(s)
        local r
        if s == '' then
            return 'Fine, be that way.'
        end
        if s:upper() == s then
            return s:find('?') and 'Calm down, I know what I\'m doing!' or 'Whoa, chill out!'
        end

        return s:find('?') and 'Sure' or 'Whatever'
    end
}

