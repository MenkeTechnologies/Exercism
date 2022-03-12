return function(n)

    if n < 1 then
        error("Only positive numbers are allowed")
    end

    local cnt = 0

    while n > 1 do
        if n % 2 == 0 then
            n = n / 2
        else
            n = 3 * n + 1
        end
        cnt = cnt + 1

    end

    return cnt

end
