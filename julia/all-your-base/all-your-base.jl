function all_your_base(in, base_in, base_out)
    (base_in <= 1) | (base_out <= 1) && throw(DomainError("invalid base $base_in"))
    any(i -> (i < 0) | (i >= base_in), in) && throw(DomainError("invalid digits $in"))
    n = length(in)
    sum = reduce((acc, n) -> acc * base_in + n, in, init=0) 
    reverse!(digits(sum; base=base_out))
end