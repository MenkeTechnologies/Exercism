return {
    valid = function(s)
        local stk = {}
        for c in s:gmatch('[][{}()]') do
            local valid = true
            if c == '(' or c == '[' or c == '{' then table.insert(stk, c)
            elseif c == ')' then valid = table.remove(stk) == '('
            elseif c == ']' then valid = table.remove(stk) == '['
            elseif c == '}' then valid = table.remove(stk) == '{'
            else assert(false, "unexpected character: " .. c)
            end
            if not valid then return false end
        end
        return #stk == 0
    end
}
