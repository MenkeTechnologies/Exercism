nums = [(1000, "M"), (900, "CM"), (500, "D"), (400, "CD"), (100, "C"), (90, "XC"),
        (50, "L"), (40, "XL"), (10, "X"), (9, "IX"), (5, "V"), (4, "IV"), (1, "I")]

function to_roman(number::Integer)
    if number < 1
        error("$number must be positive")
    end

    r = Vector{String}()
    for (n, s) in nums
        push!(r, repeat(s, div(number, n)))
        number = number % n
    end
    prod(r)
end
