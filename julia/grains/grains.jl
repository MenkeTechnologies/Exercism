function on_square(n::Integer)
    (n < 1 || n > 64) && throw(DomainError("Must be a positive integer between 1-64"))
    2^(big(n) - 1)
end

function total_after(n::Integer)
    (n < 1 || n > 64) && throw(DomainError("Must be a positive integer between 1-64"))
    sum([on_square(i) for i in 1:n])
end
