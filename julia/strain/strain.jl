function keep(lst, f)
    results = []
    for value in lst
        if f(value)
            push!(results, value)
        end
    end
    results
end

function discard(lst, f)
    keep(lst, n -> !f(n))
end
