return {
    egg_count = function(n)
        local cnt = 0
        while n > 0 do
            cnt = cnt + n % 2
            n = n >> 1
        end
        return cnt
    end
}
