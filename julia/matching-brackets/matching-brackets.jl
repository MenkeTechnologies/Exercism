function matching_brackets(s)
    bpairs = Dict('[' => ']', '(' => ')', '{' => '}')
    stk = Char[]
    for c in s
        if c ∈ keys(bpairs)
            push!(stk, c)
        elseif c ∈ values(bpairs)
            if isempty(stk) || bpairs[pop!(stk)] != c
                return false
            end
        end
    end
    isempty(stk)
end
