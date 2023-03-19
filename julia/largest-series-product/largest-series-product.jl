function largest_product(s, window)
    if window > length(s) || window < 0 || (length(s) == 0 && window > 0)
        throw(ArgumentError("Invalid window argument"))
    end
    lst = [parse(Int, c) for c in s]
    maximum(prod(lst[i .+ (1:window)]) for i in 0:(length(s) - window))
end
