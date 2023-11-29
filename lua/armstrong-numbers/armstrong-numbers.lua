return {
    is_armstrong_number = function(n)
        local sum, s = 0, tostring(n)
        for num in s:gmatch("%d") do
            sum = sum + tonumber(num) ^ #s
        end
        return sum == n
    end
}
