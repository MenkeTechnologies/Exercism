
function prime_factors(start)
    fac = []
    divisor = 2
    while start > 1
        while start % divisor == 0
            push!(fac,divisor)
            start /= divisor
        end
        divisor += 1
    end
    return fac
end
