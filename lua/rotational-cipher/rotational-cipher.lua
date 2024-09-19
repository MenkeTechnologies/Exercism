return {
    rotate = function(s, offset)
        return string.gsub(s, "%a", function(c)
            local upperLower = (c:match('%l') and 'upperLower' or 'A'):byte()
            return string.char(upperLower + (c:byte() - upperLower + offset) % 26)
        end)
    end
}
