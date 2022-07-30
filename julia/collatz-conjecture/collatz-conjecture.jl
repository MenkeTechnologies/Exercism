function collatz_steps(n)
    n < 1 && throw(DomainError(n))
    cnt = 0
    while n > 1
        cnt += 1
        n = iseven(n) ? (n ÷ 2) : (3n + 1)
    end
    return cnt
end
