function count_nucleotides(s)
    r = Dict('A' => 0, 'C' => 0, 'G' => 0, 'T' => 0)
    for c in s
        haskey(r, c) ? r[c] += 1 : throw(DomainError(c))
    end
    return r
end

