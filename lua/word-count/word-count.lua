return {
    word_count = function(s)
        local t = {}
        for s in s:lower():gmatch("[%w']+") do
            s = s:gsub("^'", ""):gsub("'$", "")
            t[s] = (t[s] or 0) + 1
        end
        return t
    end
}
