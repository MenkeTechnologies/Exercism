return {
    to_decimal = function (num)
        local r = 0
        for i=1,#num do
            if num:sub(i,i) ~= '0' and num:sub(i,i) ~= '1' then
                return 0
            end
            r = r * 2 + tonumber(num:sub(i,i))
        end
        return r
    end
}
